from django.conf.urls import url
from django.urls import include, path
from drf_yasg import openapi
from drf_yasg.views import get_schema_view
from rest_framework import permissions

from user.urls import user_urlpatterns
from rest_framework.authentication import BaseAuthentication

urlpatterns = []

schema_view = get_schema_view(openapi.Info(title="Garpix Drujba",
                                           default_version='v1',
                                           description="API for Garpix Drujba",
                                           contact=openapi.Contact(email="garpix@garpix.com"),
                                           ),
                              public=False,
                              permission_classes=(permissions.AllowAny,),
                              # authentication_classes=(BaseAuthentication,)
                              )

urlpatterns += [
    url(r'^docs(?P<format>\.json|\.yaml)$', schema_view.without_ui(cache_timeout=0), name='schema-json'),
    url(r'^docs/$', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    url(r'^redoc/$', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),
]

urlpatterns += [
    path('user/', include(user_urlpatterns)),
]
