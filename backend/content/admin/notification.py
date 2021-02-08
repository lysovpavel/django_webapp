from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from ..models.notification import Notification


@admin.register(Notification)
class NotificationAdmin(admin.ModelAdmin):
    list_display = ('user', 'title', 'content')
