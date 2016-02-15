#!/bin/sh

python manage.py migrate --noinput
python manage.py collectstatic --noinput
ln -s /usr/lib/python2.7/plat-*/_sysconfigdata_nd.py /usr/lib/python2.7/
uwsgi --enable-threads --single-interpreter --http :8000 --module project.wsgi
