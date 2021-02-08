from django.db.models.signals import post_save
from django.dispatch import receiver

from content.models.notification import Notification
from content.produsers import send_message


@receiver(post_save, sender=Notification)
def send_push_post_news(sender, instance, created, **kwargs):
    if created:
        data = {
            'message': instance.content
        }
        send_message(data)
