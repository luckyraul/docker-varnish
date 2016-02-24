FROM mygento/puppet

MAINTAINER nikita@mygento.ru

ADD start.sh /start.sh
CMD /start.sh

EXPOSE 6081 6082
