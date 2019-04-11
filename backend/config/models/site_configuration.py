from django.db import models
from solo.models import SingletonModel


class SiteConfiguration(SingletonModel):
    ok_link = models.CharField(max_length=512, blank=True, default='https://paste_link/',
                               verbose_name='Ссылка на Одноклассники')
    vk_link = models.CharField(max_length=512, blank=True, default='https://paste_link/',
                               verbose_name='Ссылка вКонтакте')
    insta_link = models.CharField(max_length=512, blank=True, default='https://paste_link/',
                                  verbose_name='Ссылка Instagram')
    fb_link = models.CharField(max_length=512, blank=True, default='https://paste_link/',
                               verbose_name='Ссылка Facebook')
    kremlin_link = models.CharField(max_length=512, blank=True, default='http://www.kremlin.ru/',
                                    verbose_name='Ссылка Facebook')
    gov_link = models.CharField(max_length=512, blank=True, default='http://government.ru/',
                                verbose_name='Ссылка Facebook')
    obl_link = models.CharField(max_length=512, blank=True, default='https://www.astrobl.ru/',
                                verbose_name='Ссылка Facebook')
    virtual_reception_link = models.CharField(max_length=512, blank=True, default='https://paste_link/',
                                              verbose_name='Ссылка Интернет приемная')
    logo_text = models.TextField(blank=True, verbose_name='Текст рядом с лого',
                                 default='Официальный сайт врио губернатора Астраханской области Сергея Морозова')
    robots_txt = models.TextField(blank=True, verbose_name='robots.txt content', default='')
    scripts = models.TextField(blank=True, verbose_name='metric scripts', default='')

    def __str__(self):
        return 'Настройки сайта'

    class Meta:
        verbose_name = 'Настройки сайта'
