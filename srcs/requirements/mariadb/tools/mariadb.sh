#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mysql_secure_installation << EOF

Y
$MYSQL_ROOT_PW
$MYSQL_ROOT_PW
Y
Y
Y
Y
EOF

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;" | mysql -uroot
echo "CREATE USER IF NOT EXISTS '$MYSQL_ROOT'@'%' IDENTIFIED BY '$MYSQL_ROOT_PW' ;" | mysql -uroot
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ROOT'@'%';" | mysql -uroot
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" | mysql -uroot
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" | mysql -uroot
echo "FLUSH PRIVILEGES;" | mysql -uroot

service mariadb stop

exec "$@"