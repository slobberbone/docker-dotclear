FROM php:5.6-apache

RUN apt-get update

RUN apt-get install -y wget \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    && docker-php-ext-install mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
    
WORKDIR /var/www/html/
RUN rm index.html
RUN wget http://download.dotclear.net/latest.zip /var/www/html
RUN mv -R /var/www/html/dotclear/* /var/www/html
RUN rm -Rf dotclear
RUN chown -R www-data .
RUN apt-get remove -y wget

VOLUME /var/www/html/data
