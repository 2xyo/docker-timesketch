FROM python
MAINTAINER 2xyo "yohnn@lepage.info"

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update -y && \
    apt-get install -y libjpeg-dev build-essential


WORKDIR /

RUN git clone https://github.com/google/timesketch.git app

RUN /usr/bin/pip install -U django django-tastypie pyelasticsearch pillow
#RUN /env/bin/pip install -r /opt/apps/timesketch/requirements.txt

#VOLUME /timesketch/timesketch/settings_local.py
#VOLUME /data
#VOLUME /scripts


RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8000

CMD []
ENTRYPOINT ["/bin/bash", "/scripts/run.sh"]


#RUN /bin/mv timesketch/settings.py.example timesketch/settings.py
#RUN /bin/sed -ri "s'CHANGE_THIS_TO_SOMETHING_ELSE'$(/opt/venv/timesketch/bin/python /opt/apps/timesketch/utils/gen_secret_key.py)'g" \
#	timesketch/settings_local.py
#RUN /bin/sed -i "s#change_this_to_where_timesketch_is_installed#opt/apps#g" \
#	timesketch/settings.py
#RUN /bin/sed -i "s#MEDIA_ROOT = ''#MEDIA_ROOT = '/opt/apps/timesketch/timesketch/media'#g" \
#	timesketch/settings.py
#RUN /bin/sed -i "s#MEDIA_URL = ''#MEDIA_URL = '/media/'#g" \
#	timesketch/settings.py
#RUN /bin/sed -i "s#TEMPLATE_DIRS = (#TEMPLATE_DIRS = ('/opt/apps/timesketch/timesketch/templates', #g" \
#	timesketch/settings.py
#RUN /bin/sed -i "s#'NAME': 'database.db',#'NAME': '/opt/apps/timesketch/db/database.db',#g" timesketch/settings.py
#RUN python manage.py migrate


