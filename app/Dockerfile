FROM php:7.4-fpm-alpine

WORKDIR /app
COPY ./webroot /app

RUN apk add --update --no-cache make git libzip-dev \
    && docker-php-ext-install zip pdo_mysql

RUN make /bin/composer
