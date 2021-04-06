#! /bin/bash
cd /var/www/eagle_eye
python3 manage.py runserver 0.0.0.0:5000 &  daphne -u /var/www/eagle_eye/daphne.sock d_auth.asgi:application &  uwsgi --socket /var/www/eagle_eye/eagle_eye.sock --module d_auth.wsgi --chmod-socket=777 

