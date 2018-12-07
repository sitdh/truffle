FROM php:fpm

RUN apt-get update && apt-get upgrade -y
RUN apt-get install libedit-dev libreadline-dev \
    libxml2-dev libssl-dev libxslt-dev -y
RUN export CFLAGS="-I/usr/src/php"

RUN docker-php-ext-install opcache
RUN docker-php-ext-install pdo
RUN docker-php-ext-install calendar
RUN docker-php-ext-install exif
RUN docker-php-ext-install gettext
RUN docker-php-ext-install shmop
RUN docker-php-ext-install sysvmsg
RUN docker-php-ext-install sysvsem
RUN docker-php-ext-install sysvshm
RUN docker-php-ext-install wddx
RUN docker-php-ext-install xmlwriter
RUN docker-php-ext-install xsl
