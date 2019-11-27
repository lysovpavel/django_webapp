# from django.db import models
# from django.conf import settings
#
#
# class Contact(models.Model):
#     address = models.CharField(max_length=200, verbose_name="Адресс", blank=True, null=True)
#     sales_depart_phone = models.CharField(max_length=20, verbose_name="Номер телефона отдела продаж", blank=True, null=True)
#     company_phone = models.CharField(max_length=20, verbose_name="Контактный номер телефона организации", blank=True, null=True)
#     email = models.EmailField(verbose_name="E-mail")
#
#     class Meta:
#         verbose_name = "Контакт"
#         verbose_name_plural = "Контакты"
#
#     def __str__(self):
#         return self.