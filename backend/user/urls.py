from django.urls import include, path, re_path
from django.contrib.auth import views as auth_views


urlpatterns = [
    re_path(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$', auth_views.PasswordResetConfirmView.as_view(), name="password_reset_confirm"),
    re_path(r'^reset/done/$', auth_views.PasswordResetCompleteView.as_view(), name="password_reset_complete"),

]
