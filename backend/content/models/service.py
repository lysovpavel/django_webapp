from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct
from garpix_utils.file_field.file_field import get_file_path


class Service(models.Model):
    title = models.CharField(max_length=150, blank=False, null=False, verbose_name="Название услуги")
    description = models.TextField(verbose_name="Описание услуги", blank=False, null=False,)
    image = models.ImageField(verbose_name='Изображение', upload_to=get_file_path, blank=True, null=True)

    class Meta:
        verbose_name = "Услуга"
        verbose_name_plural = "Услуги"

    def __str__(self):
        return self.title