FROM debian:buster

RUN apt update \
&& apt install nginx openssl zsh -y

RUN mkdir -p /etc/nginx/ssl


RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Lausanne/O=42/OU=42/CN=qbonvin.42.fr/UID=login"

RUN mkdir -p /var/run/nginx

COPY conf/default.conf /etc/nginx/conf.d

RUN chown -R www-data:www-data /var/www/html

RUN chmod -R 777 /var/www/html


CMD [ "nginx", "-g", "daemon off;" ]
