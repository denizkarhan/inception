FROM debian:10.12

RUN apt-get update && apt-get upgrade -y && apt install nginx openssl -y
RUN mkdir -p /etc/nginx/ssl && openssl req -newkey rsa:4096 -x509 -days 365 -nodes \
-out /etc/ssl/MyCert.crt \
-keyout /etc/ssl/MyKey.key \
-subj "/C=FR/ST=PACA/L=NICE/O=42/OU=42/CN=dkarhan.42.fr/UID=dkarhan"

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY tools/start.sh	.

RUN chmod 777 /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN chmod +x start.sh

ENTRYPOINT [ "sh", "start.sh" ]
