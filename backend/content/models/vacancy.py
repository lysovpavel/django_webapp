from django.db import models
from django.conf import settings
from .abstract_product import AbstractProduct
from garpix_utils.file_field.file_field import get_file_path


class Vacancy(models.Model):
    title = models.CharField(max_length=150, blank=False, null=False, verbose_name="Название вакансии")
    department = models.CharField(max_length=150, blank=False, null=False, verbose_name="Отдел компании", choices=settings.DEPARTMENT_TYPES)
    description = models.TextField(verbose_name="Описание обязанностей", blank=False, null=False)

    class Meta:
        verbose_name = "Вакансия"
        verbose_name_plural = "Вакансии"
        ordering = ('-created_at',)

    def __str__(self):
        return self.title