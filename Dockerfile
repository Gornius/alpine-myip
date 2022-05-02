FROM alpine

RUN apk update && apk add php php-json;\
    mkdir -p /var/phpapp;
ADD app/ /var/phpapp

ENTRYPOINT cd /var/phpapp && echo "Rafał Cisek" $(date) && php -S 0.0.0.0:8000
