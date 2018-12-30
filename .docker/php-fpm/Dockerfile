FROM phpdockerio/php72-fpm:latest
WORKDIR /var/www

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php-memcached \
                php7.2-mysql \
                php-redis \
                php-xdebug \
                php7.2-dba \
                php-mongodb \
                php-msgpack \
                php7.2-soap \
                php-ssh2 \
                php-yaml \
                git \
                zip \
                curl \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/web
COPY . /var/www/web

# RUN php galaxy use:root homestead homestead secret

# RUN composer install -q -n