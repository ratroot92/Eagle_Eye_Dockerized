# build_dev.sh
#!/usr/bin/env bash
/home/asd/Desktop/development/PEC_ADMIN/cpdExam/stopProject.sh
DJANGO_SETTINGS_MODULE=myproject.settings.dev \
DJANGO_SECRET_KEY="change-this-to-50-characters-long-
 random-string" \
DATABASE_NAME=myproject \
DATABASE_USER=myproject \
DATABASE_PASSWORD="change-this-too" \
PIP_REQUIREMENTS=dev.txt \
docker-compose up --detach --build