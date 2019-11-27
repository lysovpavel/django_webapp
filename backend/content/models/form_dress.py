from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class FormDress(AbstractProduct):
    type = models.IntegerField(default=0, verbose_name="Тип", choices=settings.FORM_DRESS_TYPES, blank=True, null=True)
    cloth_density = models.IntegerField(default=1, verbose_name="Плотность ткани",
                                        choices=settings.FORM_DRESS_CLOTH_DENSITY)
    supplier = models.IntegerField(default=0, verbose_name="Поставщик ткани", choices=settings.SUPPLIERS)
    sign = models.IntegerField(default=0, verbose_name="Знаки различия", choices=settings.SIGN_TYPES)
    soaking = models.IntegerField(default=0, verbose_name="Пропитка", choices=settings.SOAKING_TYPES)
    season = models.IntegerField(default=0, verbose_name="Сезонность", choices=settings.SEASON_TYPES)
    color = models.IntegerField(default=0, verbose_name="Цвет", choices=settings.FORM_DRESS_COLORS)

    class Meta:
        verbose_name = "Форменная одежда"
        verbose_plural = "Форменная одежда"
        sort = ('-created_at',)
