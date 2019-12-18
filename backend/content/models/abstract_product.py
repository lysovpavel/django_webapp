from django.db import models


class AbstractProduct(models.Model):
    title = models.CharField(max_length=150, blank=False, db_index=True, verbose_name="Название продукта")
    description = models.TextField(verbose_name="Описание")
    created_at = models.DateTimeField(auto_now_add=True)


    class Meta:
        pass

    def __str__(self):
        return self.title