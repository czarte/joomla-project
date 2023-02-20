# syntax=docker/dockerfile:1
FROM php:8.2.1-apache
RUN   apt update \                                                                                                                                                                                                                        
    && apt install -y ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates 
RUN docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && a2enmod rewrite \
    && service apache2 restart