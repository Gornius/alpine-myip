# Created by Rafał Cisek (https://github.com/gornius)

FROM alpine

RUN apk update && apk add php php-json;\
    mkdir -p /var/phpapp;
ADD app/ /var/phpapp

EXPOSE 8000/tcp

ENTRYPOINT cd /var/phpapp && echo "Rafał Cisek" $(date) && php -S 0.0.0.0:8000
