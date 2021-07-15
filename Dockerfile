FROM nanoninja/php-fpm:7.4.10
COPY --from=composer:1.10.1 /usr/bin/composer /usr/bin/composer

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y nodejs

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g grunt-cli