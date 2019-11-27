from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class Service(models.Model):
    title = models.CharField(max_length=150, blank=False, verbose_name="Название ")