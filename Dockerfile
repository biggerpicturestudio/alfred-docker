FROM studiosidekicks/php8:8.0.13
COPY --from=composer:2.1.12 /usr/bin/composer /usr/bin/composer

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y nodejs

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g grunt-cli