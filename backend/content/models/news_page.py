# from django.db import models
# from garpix_page.abstract.models.abstract_page import AbstractBasePageModel
# from django.conf import settings
# from garpix_page.models import Page
# from garpix_utils.file_field.file_field import get_file_path
# from ckeditor_uploader.fields import RichTextUploadingField
#
#
# def get_default_news():
#     page = Page.objects.filter(page_type=settings.PAGE_TYPE_NEWS).first()
#     return page.id if page else None
#
# class NewsPage(AbstractBasePageModel):
#     parent = models.ForeignKey(Page, default=get_default_news(), null=True, blank=True, related_name='news',
#                                verbose_name='Родительская страница', on_delete=models.SET_NULL)
#     page_type = models.IntegerField(default=settings.PAGE_TYPE_NEWS_DETAIL, verbose_name="Тип страницы")
#     image = models.ImageField(verbose_name='Превью', upload_to=get_file_path, blank=True, null=True)
#     content_top = RichTextUploadingField(verbose_name='Текст сверху', blank=True, default='')
#     content_down = RichTextUploadingField(verbose_name='Текст снизу', blank=True, default='')
#     label = models.CharField(verbose_name='Тип контента', max_length=50, default='Новости', blank=True,)
#
#     class Meta:
#         verbose_name = "Новость"
#         verbose_name_plural = "Новости"
#         ordering = ('-created_at',)
#
#     def get_media(self):
#         return self.media.all()