from php:7.0.19
run apt-get update -yqq \
&& apt-get install -y software-properties-common \
&& apt-get install git libssl-dev libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev libmemcached-dev -yqq \
&& pecl install mongodb \
&& apt-get install -y mongodb \
&& echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/ext-mongodb.ini \
&& pecl install memcached \
&& echo "extension=memcached.so" > /usr/local/etc/php/conf.d/ext-memcached.ini \
&& docker-php-ext-install mbstring mcrypt curl json intl gd xml zip bz2 opcache bcmath soap \
&& curl -s http://getcomposer.org/installer | php \
&& mv composer.phar /usr/local/bin/composer \
&& composer global require hirak/prestissimo \
&& apt-get install -y ansible \
&& apt-get install jq \
&& composer global require hirak/prestissimo \
&& curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh \
&& bash nodesource_setup.sh \
&& apt-get install nodejs \
&& npm install -g jasmine-node \
&& apt-get -yqq install unzip \
&& curl -LO https://deployer.org/deployer.phar && mv deployer.phar /usr/local/bin/dep && chmod +x /usr/local/bin/dep \
