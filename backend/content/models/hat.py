from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class Hat(AbstractProduct):
    type = models.IntegerField(default=0, verbose_name="Тип", choices=settings.HAT_TYPES, blank=False)
    season = models.IntegerField(default=0, verbose_name="Сезонность", choices=settings.SEASON_TYPES)
    kind = models.IntegerField(default=0, verbose_name="Вид", choices=settings.HAT_KINDS)
    cloth = models.IntegerField(default=0, verbose_name="Ткань", choices=settings.HAT_CLOTH_TYPES)
    wedges = models.IntegerField(default=0, verbose_name="Клинья", choices=settings.WEDGES_TYPES)
    liner = models.BooleanField(default=True, verbose_name="Подкладка")
    grid_insert = models.BooleanField(default=False, verbose_name="Вставка из сетки")
    laser_graving = models.BooleanField(default=False, verbose_name="Лазерная гравировка застежки")
    fur = models.BooleanField(default=False, verbose_name="Мех")
    label = models.BooleanField(default=False, verbose_name="Жаккардовая этикетка")
    printing = models.BooleanField(default=False, verbose_name="Печать")
    decoration = models.BooleanField(default=False, verbose_name="Вышивка")
    badge = models.BooleanField(default=False, verbose_name="Кокарда")


    class Meta:
        verbose_name = "Головной убор"
        verbose_plural = "Головные уборы"
        sort = ('-created_at', )