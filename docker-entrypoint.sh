#!/bin/bash

# Collect static files
#echo "Collect static files"
# python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Create superuser
DJANGO_SUPERUSER_USERNAME=root \
DJANGO_SUPERUSER_PASSWORD=root \
DJANGO_SUPERUSER_EMAIL=root@test.com \
python manage.py createsuperuser --no-input

# Start server
echo "Starting server"
python manage.py runserver 0.0.0.0:8000

# This line always goes last will exec the CMD from your Dockerfile, i.e. "php-fpm"
exec "$@"