FROM php:5.6-apache
MAINTAINER hiroyasu55

RUN apt-get update
RUN apt-get -y install vim git
RUN apt-get update \
  && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    openssl libssl-dev \
    libxml2-dev \
    vim git \
  && docker-php-ext-install -j$(nproc) \
    mbstring mcrypt iconv mysql pdo_mysql soap zip \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd

COPY config/php.ini /usr/local/etc/php/

#RUN cd /etc/apache2/mods-enabled \
#  && ln -s ../mods-available/rewrite.load
