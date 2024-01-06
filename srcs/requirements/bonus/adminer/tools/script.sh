#!/bin/bash

sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 0.0.0.0:7000|g" /etc/php/7.4/fpm/pool.d/www.conf
mkdir -p /var/www/html/wordpress/adminer
curl -s -L https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql-en.php \
    --output /var/www/html/wordpress/adminer/index.php
php-fpm7.4 -F