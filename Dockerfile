FROM php:fpm-alpine

COPY ./conf.d/*.ini /usr/local/etc/php/conf.d/

RUN docker-php-ext-install bcmath
RUN rm -rf /etc/apk/cache/* && rm -rf /var/cache/apk/*
