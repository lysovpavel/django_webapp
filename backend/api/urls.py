from django.urls import include, path
from rest_framework_swagger.views import get_swagger_view

schema_view = get_swagger_view(title='Astrakhan')

urlpatterns = [
    path('docs/', schema_view),
    path('content/', include('content.urls')),
]