FROM php:8.4-fpm

RUN echo 'opcache.enable=1' > /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.memory_consumption=256' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.interned_strings_buffer=16' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.max_accelerated_files=20000' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.validate_timestamps=0' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.jit=1255' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'opcache.jit_buffer_size=100M' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'realpath_cache_size=4096K' >> /usr/local/etc/php/conf.d/opcache.ini \
    && echo 'realpath_cache_ttl=600' >> /usr/local/etc/php/conf.d/opcache.ini

WORKDIR /var/www
