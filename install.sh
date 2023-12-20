#! /bin/bash

sudo su

echo "####################install nginx#########################"
apt update
apt install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx

apt update

echo "################### install php extention #####################"
php version
apt install php8.1-fpm -y
apt install php8.1-mbstring -y
apt install php8.1-xml -y
apt install php8.1-zip -y
apt install php8.1-mysql -y
apt install php8.1-curl -y

echo "################### install composer ######################"
apt install curl
curl -sS "https://getcomposer.org/installer" | php
mv /root/composer.phar /usr/local/bin/composer



