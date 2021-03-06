# Generated by Django 2.0.7 on 2019-03-07 12:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='SiteConfiguration',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ok_link', models.CharField(blank=True, default='https://paste_link/', max_length=512, verbose_name='Ссылка на Одноклассники')),
                ('vk_link', models.CharField(blank=True, default='https://paste_link/', max_length=512, verbose_name='Ссылка вКонтакте')),
                ('insta_link', models.CharField(blank=True, default='https://paste_link/', max_length=512, verbose_name='Ссылка Instagram')),
                ('fb_link', models.CharField(blank=True, default='https://paste_link/', max_length=512, verbose_name='Ссылка Facebook')),
                ('kremlin_link', models.CharField(blank=True, default='http://www.kremlin.ru/', max_length=512, verbose_name='Ссылка Facebook')),
                ('gov_link', models.CharField(blank=True, default='http://government.ru/', max_length=512, verbose_name='Ссылка Facebook')),
                ('obl_link', models.CharField(blank=True, default='https://www.astrobl.ru/', max_length=512, verbose_name='Ссылка Facebook')),
                ('virtual_reception_link', models.CharField(blank=True, default='https://paste_link/', max_length=512, verbose_name='Ссылка Интернет приемная')),
                ('logo_text', models.TextField(blank=True, default='Официальный сайт врио губернатора Астраханской области Сергея Морозова', verbose_name='Текст рядом с лого')),
                ('robots_txt', models.TextField(blank=True, default='', verbose_name='robots.txt content')),
                ('scripts', models.TextField(blank=True, default='', verbose_name='metric scripts')),
            ],
            options={
                'verbose_name': 'Настройки сайта',
            },
        ),
    ]
