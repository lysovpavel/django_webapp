NOTIFY_REGISTRATION_EVENT = 1

NOTIFY_EVENTS = {
    NOTIFY_REGISTRATION_EVENT: {
        'title': 'Регистрация',
        'context_description': '--',
        'event_description': 'Регистрация',
    },
}


CHOICES_NOTIFY_EVENT = [(k, v['title']) for k, v in NOTIFY_EVENTS.items()]


NOTIFY_HELP_TEXT = """
    <h3>Переменные в письме</h3>
"""

NOTIFY_SMS_URL = "http://sms.ru/sms/send"

NOTIFY_SMS_API_ID = "1234567890"

FCM_DJANGO_SETTINGS = {
    "FCM_SERVER_KEY": "1234567890"
}

SEND_SMS = False
