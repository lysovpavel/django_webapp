from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class SpecFormDress(AbstractProduct):
    company = models.CharField(max_length=150, verbose_name="Название компании", null=True)
    type = models.IntegerField(default=0, verbose_name="Тип", choices=settings.SPEC_DRESS_TYPES, blank=False)
    cloth_density = models.IntegerField(default=1, verbose_name="Плотность ткани",
                                        choices=settings.SPEC_DRESS_CLOTH_DENSITY)
    supplier = models.IntegerField(default=0, verbose_name="Поставщик ткани", choices=settings.SUPPLIERS)
    sign = models.IntegerField(default=0, verbose_name="Знаки различия", choices=settings.CORP_ELEMENT_TYPES)
    soaking = models.IntegerField(default=0, verbose_name="Пропитка", choices=settings.SOAKING_TYPES)
    season = models.IntegerField(default=0, verbose_name="Сезонность", choices=settings.HAT_SEASON_TYPES)
    color = models.IntegerField(default=0, verbose_name="Цвет", choices=settings.SPEC_DRESS_COLORS)


    class Meta:
        verbose_name = "Спец одежда"
        verbose_name_plural = "Спец одежда"
        ordering = ('-created_at',)


