#!/usr/bin/env bash



if [ -f /data/first_run.lock ];
then
	/usr/bin/python manage.py  --settings=timesketch.settings_local runserver 0.0.0.0:8000 --verbosity=3
else
	echo "First run"

	cd /app/timesketch

	/usr/bin/python -c "\
	import os;\
	os.environ['DJANGO_SETTINGS_MODULE'] = 'timesketch.settings_local';\
	from django.conf import settings;\
	from django.contrib.auth.models import User;\
	u = User(username='admin');\
	u.set_password('admin');\
	u.is_superuser = True;\
	u.is_staff = True ;\
	u.save()"

   touch /data/first_run.lock
fi


cd /app/timesketch

/usr/bin/python -c "\
import os;\
os.environ['DJANGO_SETTINGS_MODULE'] = 'timesketch.settings_local';\
from django.conf import settings;\
from django.contrib.auth.models import User;\
u = User(username='admin');\
u.set_password('admin');\
u.is_superuser = True;\
u.is_staff = True ;\
u.save()"
