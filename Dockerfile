FROM mygento/puppet

MAINTAINER nikita@mygento.ru

RUN wget -qO - https://repo.varnish-cache.org/GPG-key.txt | apt-key add - && \
  echo "deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1" >> /etc/apt/sources.list.d/varnish-cache.list && \
  apt-get -qq update && apt-get install varnish
  
EXPOSE 80
