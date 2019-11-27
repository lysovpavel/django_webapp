from django.db import models
from django.conf import settings
from ckeditor_uploader.fields import RichTextUploadingField


class News(models.Model):
    pub_date = models.DateField(auto_now_add=True, verbose_name="Дата публикации")
    title = models.CharField(max_length=150, verbose_name="Дата публикации")
    content = RichTextUploadingField(verbose_name='Текст новости', blank=True, default='')