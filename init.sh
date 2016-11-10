#!/usr/bin/env bash

sudo touch /home/box/web/etc/nginx.conf
ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

git config --global user.email "littlewolgm@gmail.com"                              
git config --global user.name "littlewolfRu"

gunicorn -c /home/box/web/etc/hello.py hello:app --daemon
gunicorn -c /home/box/web/etc/django.py wsgi --daemon
