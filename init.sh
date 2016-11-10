#!/bin/bash

sudo touch /home/box/web/etc/nginx.conf
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

git config --global user.email "littlewolgm@gmail.com"                              
git config --global user.name "littlewolfRu"
gunicorn -c /home/box/web/etc/hello.py hello:app --daemon
gunicorn -c /home/box/web/etc/django.py wsgi --daemon
#sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
