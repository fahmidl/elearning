#!/bin/bash

cp -Rp /data/elearning/nginx-config/sites-available-elearning /etc/nginx/sites-available/elearning
sudo ln -s /etc/nginx/sites-available/elearning /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx

cp -Rp /data/elearning/nginx-config/conf.d-default.conf /etc/nginx/conf.d/default.conf
service nginx restart
