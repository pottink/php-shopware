FROM php:8.1-fpm-alpine

LABEL maintainer="Jelle Deneweth <jelle@codeheroes.be>"

RUN apk add -U --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    acl \
    autoconf \
    bash \
    curl \
    git \
    jq \
    make \
    nodejs \
    npm \
    patch \
    openssh \
    supervisor \
    wget \
    zip \
    && rm -rf /var/cache/apk/*

# Add PHP extensions
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    amqp \
    bcmath \
    csv \
    exif \
    gd \
    intl \
    opcache \
    pcntl \
    pdo_mysql \
    redis \
    xdebug \
    zip

# Composer
COPY --from=composer:2.4.4 /usr/bin/composer /usr/local/bin/composer
