FROM php:7.4-fpm

WORKDIR /app
COPY ./webroot /app

RUN apt update && apt install -y git libzip-dev \
    && docker-php-ext-install zip pdo_mysql

RUN make /bin/composer
