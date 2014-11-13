#!/usr/bin/env bash
ls -ailh /app/timesketch

export DJANGO_SETTINGS_MODULE=timesketch.settings_local
cd /app
if [ ! -f /data/first_run.lock ]; then
	echo "First run"

	/usr/bin/python manage.py migrate --verbosity=3

	/usr/bin/python init_db.py

   touch /data/first_run.lock
fi


/usr/bin/python manage.py \
	runserver 0.0.0.0:8000 \
	--verbosity=3


