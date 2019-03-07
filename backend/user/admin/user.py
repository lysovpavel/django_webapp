from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import UserCreationForm
from ..models.user import User


@admin.register(User)
class UserAdmin(UserAdmin):
    pass
    # add_form_template = 'admin/auth/user/add_form.html'
    # add_form = UserCreationForm
    # readonly_fields = ('referral', 'get_number_agent', 'get_referral_link')
    # fieldsets = (
    #    ('Дополнительно', {
    #        'fields':
    #            (
    #                 'phone',
    #                 'is_phone_confirmed',
    #                 'phone_confirmation_key',
    #                 'new_phone',
    #                 'email_confirmation_key',
    #                 'is_email_confirmed',
    #                 'new_email',
    #                 'agency',
    #                 'consortia',
    #                 'host_agency',
    #                 'show_agency_statements',
    #                 'type',
    #                 'get_number_agent',
    #                 'rating',
    #                 'bonus_comission',
    #                 'get_referral_link',
    #                 'notify_period',
    #                 'notify_email',
    #                 'is_support',
    #                 'have_to_change_password',
    #                 'last_change_password',
    #                 'statement_period'
    #            )
    #         }
    #     ),
    # ) + UserAdmin.fieldsets
    #
    # add_fieldsets = (
    #     (None, {
    #         'classes': ('wide',),
    #         'fields': ('email', 'is_staff'),
    #     }),
    # )
    #
    # list_filter = (
    #     'type',
    # ) + UserAdmin.list_filter
    #
    # list_display = UserAdmin.list_display + (
    #     'get_number_agent',
    # )
