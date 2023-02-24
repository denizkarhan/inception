sed -i.bak "s/DOMAINE_NAME/$DOMAINE_NAME/g" /etc/nginx/nginx.conf
rm /etc/nginx/nginx.conf.bak
nginx -g 'daemon off;'
