FROM nginx:latest

COPY fastcgi.conf /etc/nginx/
COPY dhparam.pem /etc/nginx/
COPY ssl_config.conf /etc/nginx/
COPY gzip.conf /etc/nginx/

VOLUME /etc/nginx/conf.d

VOLUME /etc/letsencrypt

WORKDIR /var/www
