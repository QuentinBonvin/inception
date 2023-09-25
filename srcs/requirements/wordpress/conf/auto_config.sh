#!/bin/bash

sleep 10

mkdir -p /run/php

# wp config create	--allow-root \
# 	--dbname=$SQL_DATABASE \
# 	--dbuser=$SQL_USER \
# 	--dbpass=$SQL_PASSWORD \
# 	--dbhost=mariadb:3306 --path='/var/www/wordpress'

cd /var/www/wordpress/

wp core install --allow-root \
    --url=${WP_URL} \
    --title=${WP_TITLE} \
    --admin_user=${WP_ADMIN} \
    --admin_email=${WP_EMAIL} \
    --admin_password=${WP_ADMIN_PWD}

wp user create --allow-root\
    ${WP_DB_USER}\
    ${WP_EMAIL_USER} \
    --role=author\
    --user_pass=${WP_DB_PWD}

/usr/sbin/php-fpm7.3 --nodaemonize