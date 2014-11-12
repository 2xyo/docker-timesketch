import os
from timesketch.settings import *


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': '/data/database.db',
        'USER': '',
        'PASSWORD': '',
        'HOST': '',
        'PORT': '',
    }
    # 'default': {
    #     'ENGINE': 'django.db.backends.postgresql_psycopg2',
    #     'NAME': 'timesketch',
    #     'USER': 'timesketch',
    #     'PASSWORD': 'timesketch',
    #     'HOST': os.environ['POSTGRESQL_PORT_5432_TCP_ADDR'],
    #     'PORT': os.environ['POSTGRESQL_PORT_5432_TCP_PORT'],
    # }
}

MEDIA_ROOT = '/app/timesketch/timesketch/media'

MEDIA_URL = '/media/'


STATICFILES_DIRS = (
    "/app/timesketch/timesketch/static",
)

SECRET_KEY = 'CHANGE_THIS_TO_SOMETHING_ELSE'

TEMPLATE_DIRS = (
    '/app/timesketch/timesketch/templates'
)
