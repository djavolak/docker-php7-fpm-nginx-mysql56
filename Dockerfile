FROM richarvey/nginx-php-fpm
MAINTAINER Milos Jovanov <djavolak@mail.ru>

ENV DEBIAN_FRONTEND noninteractive

# setup required timezone
ENV TZ=Europe/Belgrade
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# setup & start required services
#RUN add-apt-repository ppa:ondrej/php
#RUN apt-get update
#RUN apt-get upgrade --yes
#RUN apt-get install --yes redis-server
#RUN apt-get install --yes memcached
#RUN apt-get install --yes git-core gcc autoconf make
#RUN apt-get purge php
#RUN apt-get install --yes php5.5-apcu
#RUN apt-get install --yes php5.5-intl
#RUN apt-get install --yes php5.5-memcache
#RUN apt-get install --yes php5.5-xdebug
#RUN apt-get install --yes php5.5-redis
#RUN service memcached start
#RUN service redis-server start
#RUN service mysql start

#RUN service php5-fpm restart

EXPOSE 9000
