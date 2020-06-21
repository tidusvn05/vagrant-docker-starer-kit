FROM php:7.3-fpm-alpine

# base
RUN apk --update add --virtual build-dependencies build-base openssl-dev autoconf
RUN apk add --no-cache php7-dev

# Install the mysqli extension
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

RUN docker-php-ext-install opcache

# zip
RUN apk add --no-cache zip libzip-dev
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install zip

# install mongodb ext
# RUN pecl install mongodb \
#     && docker-php-ext-enable mongodb

# gd
# RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
#   docker-php-ext-configure gd \
#     --with-gd \
#     --with-freetype-dir=/usr/include/ \
#     --with-png-dir=/usr/include/ \
#     --with-jpeg-dir=/usr/include/ && \
#   NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
#   docker-php-ext-install -j${NPROC} gd && \
#   apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

