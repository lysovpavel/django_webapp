from django.db import models

from user.models import User


class Notification(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='notification')
    title = models.CharField('Заголовок', max_length=150, blank=True, default='')
    content = models.TextField('Текст')

    class Meta:
        verbose_name = 'Уведомление'
        verbose_name_plural = 'Уведомления'

    def __str__(self):
        return self.user
