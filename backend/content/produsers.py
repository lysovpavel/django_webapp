from json import dumps
from django.conf import settings
from nats.aio.client import ErrTimeout
from pynats import NATSClient as SyncClient


def send_message(data, channel=None):
    if channel is None:
        channel = settings.NATS_CHANNEL_OUT
    status = False
    # nc = SyncClient(settings.NATS_HOST_PORT)
    nc = SyncClient(f'nats://{settings.NATS_HOST_PORT}')
    try:
        nc.connect()
        data_enc = dumps(data).encode('utf-8')
        response_data = {}
        try:
            # payload = json.dumps(data_enc)
            nc.publish(channel, payload=data_enc)
            # response_data = json.loads(_response.payload)
        except ErrTimeout:
            print("Request timed out")

        # response = response_data.get('subject', '')
        status = response_data.get('received', False)
        status = True
    except Exception as e:
        print(f'{str(e)}')
    nc.close()
    return status
