FROM debian:10.12

RUN apt-get update && apt-get upgrade -y && apt-get -y install wget
RUN apt-get install -y php7.3 \
	php-fpm \
	php-mysql \
	mariadb-client

RUN wget https://tr.wordpress.org/wordpress-6.1-tr_TR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.1-tr_TR.tar.gz && rm wordpress-6.1-tr_TR.tar.gz
RUN	chown -R root:root /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY	./conf/php.conf	/etc/php/7.3/fpm/pool.d/www.conf
COPY	conf/wordpress_config.sh wordpress_config.sh

EXPOSE 9000

RUN chmod +x wordpress_config.sh

ENTRYPOINT ["sh", "wordpress_config.sh"]
