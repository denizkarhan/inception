nfig.sh 
#!bin/bash
sleep 10
if [ ! -e /var/www/wordpress/wp-config.php ]; then
    wp config create --allow-root \
		--dbname=$DATABASE_NAME \
		--dbuser=$DATABASE_USER \
		--dbpass=$DATABASE_PASSWORD \
    	--dbhost=mariadb:3306 \
		--path='/var/www/wordpress'

	sleep 10
	wp core install --url=$DOMAINE_NAME \
		--title=$SITE_NAME \
		--admin_user=$ADMIN_NAME \
		--admin_password=$ADMIN_PASSWORD \
		--admin_email=$ADMIN_MAIL \
		--allow-root \
		--path='/var/www/wordpress'
	wp user create --allow-root \
		--role=author $USER_NAME $USER_MAIL \
		--user_pass=$USER_PASSWORD \
		--path='/var/www/wordpress' >> /log.txt
fi

if [ ! -d /run/php ]; then
    mkdir ./run/php
fi

# launchin php, daemon
/usr/sbin/php-fpm7.3 -F
