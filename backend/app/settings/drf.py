from .languages import DATE_INPUT_FORMATS, SHORT_DATE_FORMAT, DATE_FORMAT
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework.authentication.SessionAuthentication',
        #'rest_framework.authentication.BasicAuthentication',
    ),
    'DEFAULT_PERMISSION_CLASSES': [
        # 'rest_framework.permissions.DjangoModelPermissionsOrAnonReadOnly',
        'rest_framework.permissions.AllowAny'
    ],
    'DEFAULT_FILTER_BACKENDS': (
        'django_filters.rest_framework.DjangoFilterBackend',
    ),
    'DEFAULT_PAGINATION_CLASS': 'rest_framework.pagination.LimitOffsetPagination',
    'PAGE_SIZE': 3,
    'MAX_PAGE_SIZE': 10,
    'DATE_INPUT_FORMATS': DATE_INPUT_FORMATS,
    'SHORT_DATE_FORMAT': SHORT_DATE_FORMAT,
    'DATE_FORMAT': DATE_FORMAT,
}

# DATE_SERIALIZER_FORMAT = '%d.%m.%Y'
