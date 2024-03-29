#!/bin/bash
echo "Update & Install Package"
sudo apt update -y
sudo apt install -y nginx php7.2-fpm

echo "Copy info.php"
sudo cp /vagrant/info.php /var/www/html/

echo "Config Nginx"
cd /etc/nginx/sites-available
sudo cp /vagrant/default /etc/nginx/sites-available/php
sudo ln -s /etc/nginx/sites-available/php /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default

echo "Restart Service"
sudo nginx -t
sudo nginx -s reload
sudo systemctl restart php7.2-fpm.service
sudo systemctl restart nginx.service
