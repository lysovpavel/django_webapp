from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct


class FormDress(AbstractProduct):
    class FORM_DRESS_TYPE:
        FIELD = 0
        EVERYDAY = 1
        STATE = 2
        TYPES = (
            (FIELD, "Парадная"),
            (EVERYDAY, "Повседневная"),
            (STATE, "Парадная"),
        )

    class CLOTH_DENSITY:
        TYPE_1 = 0
        TYPE_2 = 1
        TYPES = (
            (TYPE_1, '342'),
            (TYPE_2, '280')
        )

    class SUPLIER:
        RUSSIA = 0
        CHINA = 1
        TYPES = (
            (RUSSIA, "Россия"),
            (CHINA, "Китай"),
        )

    class SIGN:
        CHEVRON = 0
        ARM_SIGN = 1
        CHEST_SIGN = 2
        TYPES = (
            (CHEVRON, "Шеврон"),
            (ARM_SIGN, "Нарукавный знак"),
            (CHEST_SIGN, "Нагрудный знак"),
        )

    class SOAKING:
        TYPE_1 = 0
        TYPES = (
            (TYPE_1, 0),
        )

    class SEASON:
        WINTER = 0
        SUMMER = 1
        DEMISEASON = 3
        TYPES = (
            (WINTER, "Зимняя"),
            (SUMMER, "Летняя"),
            (DEMISEASON, "Демисезонная"),
        )
    class COLOR:
        BLACK = 0
        BLUE = 1
        GREEN = 2
        BROWN = 3
        OTHER = 4
        TYPES = (
            (BLACK, "Черный"),
            (BLUE, "Синий"),
            (GREEN, "Зеленый"),
            (BROWN, "Коричневый"),
            (OTHER, "Другой"),
        )


    type = models.IntegerField(default=0, verbose_name="Тип", choices=FORM_DRESS_TYPE.TYPES, blank=True, null=True)
    cloth_density = models.IntegerField(default=1, verbose_name="Плотность ткани",
                                        choices=CLOTH_DENSITY.TYPES)
    supplier = models.IntegerField(default=0, verbose_name="Поставщик ткани", choices=SUPLIER.TYPES)
    sign = models.IntegerField(default=0, verbose_name="Знаки различия", choices=SIGN.TYPES)
    soaking = models.IntegerField(default=0, verbose_name="Пропитка", choices=SOAKING.TYPES)
    season = models.IntegerField(default=0, verbose_name="Сезонность", choices=SEASON.TYPES)
    color = models.IntegerField(default=0, verbose_name="Цвет", choices=COLOR.TYPES)


    class Meta:
        verbose_name = "Форменная одежда"
        verbose_name_plural = "Форменная одежда"
        ordering = ('-created_at',)
