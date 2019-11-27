from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class FormShirt(AbstractProduct):
    company = models.CharField(max_length=150, verbose_name="Название компании", null=True, blank=True)
    type = models.IntegerField(default=0, verbose_name="Тип", choices=settings.FORM_SHIRT_TYPES, blank=False)
    cloth_density = models.IntegerField(default=1, verbose_name="Плотность ткани",
                                        choices=settings.FORM_SHIRT_DENSITY_TYPES)
    supplier = models.IntegerField(default=0, verbose_name="Поставщик ткани", choices=settings.SUPPLIERS)
    sign = models.IntegerField(default=0, verbose_name="Знаки различия", choices=settings.CORP_ELEMENT_TYPES)
    color = models.IntegerField(default=0, verbose_name="Цвет", choices=settings.SPEC_DRESS_COLORS)


    class Meta:
        verbose_name = "Форменная одежда"
        verbose_plural = "Форменная одежда"
        sort = ('-created_at',)
