from django.contrib import admin
from solo.admin import SingletonModelAdmin
from ..models.site_configuration import SiteConfiguration


@admin.register(SiteConfiguration)
class SiteConfigurationAdmin(SingletonModelAdmin):
    pass
