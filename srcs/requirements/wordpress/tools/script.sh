#!/bin/bash

if [-f /var/www/html/wordpress/wp-config.php]
then
    echo "wp already Done"
else
    cd wordpress
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
    chmod +x wp-cli.phar; 
	mv wp-cli.phar /usr/local/bin/wp;
    wp core download --allow-root;

    mv /var/www/html/wp-config.php /var/www/html/wordpress/wp-config.php
    chown -R www-data:www-data wordpress
    find /var/www/html/wordpress -type d -exec chmod 755 {} \;
    find /var/www/html/wordpress -type f -exec chmod 644 {} \;
    sed -i "s/database_name_here/$MYSQL_DATABASE/" wp-config.php 
    sed -i "s/username_here/$MYSQL_USER/" wp-config.php  
    sed -i "s/password_here/$MYSQL_PASSWORD/" wp-config.php  
    sed -i "s/localhost/$WORDPRESS_DB_HOST/" wp-config.php
    
    wp core install --allow-root --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}
	wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};

    #Redis bonus
    wp plugin install redis-cache --activate --allow-root
	wp plugin update --all --allow-root
	wp redis enable --allow-root
fi 
exec "$@"