FROM nanoninja/php-fpm:7.3.6
COPY --from=composer:1.9.0 /usr/bin/composer /usr/bin/composer