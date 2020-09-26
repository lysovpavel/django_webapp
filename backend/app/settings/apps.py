VENDOR_APPS = [
    'solo',
    'fcm_django',
    'easy_thumbnails',
    'garpix_admin',
    'garpix_notify',
    'garpix_utils',
    'garpix_page',
    'garpix_menu',
    'garpix_event',
    'ckeditor',
    'mptt',
    'modeltranslation',
    'nested_admin',
    'rest_framework',
    'rest_framework_swagger',
    'snowpenguin.django.recaptcha3',
]

DJANGO_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sitemaps',
    'django.contrib.sites',
]

PROJECT_APPS = [
    'api',
    'config',
    'content',
    'user',
    'garpix_qa',
]

INSTALLED_APPS = (VENDOR_APPS + DJANGO_APPS + PROJECT_APPS)
