FROM php:fpm-alpine

RUN docker-php-ext-install bcmath
RUN rm -rf /etc/apk/cache/* && rm -rf /var/cache/apk/*
