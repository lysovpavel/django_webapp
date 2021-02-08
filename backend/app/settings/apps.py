VENDOR_APPS = [
    'solo',
    'easy_thumbnails',
    'ckeditor',
    'mptt',
    'modeltranslation',
    'nested_admin',
    'rest_framework',
    'rest_framework_swagger',
    'snowpenguin.django.recaptcha3',
    'drf_yasg'
]

DJANGO_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # 'django.contrib.sitemaps',
    # 'django.contrib.sites',
]

PROJECT_APPS = [
    'api',
    'config',
    'content',
    'user',
]

INSTALLED_APPS = (VENDOR_APPS + DJANGO_APPS + PROJECT_APPS)
