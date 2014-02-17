FROM resin/rpi-raspbian:wheezy
MAINTAINER jon.gretarsson@gmail.com
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q nginx supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor

CMD ["/usr/bin/supervisord"]

EXPOSE 80 443

ADD sites-enabled /etc/nginx/conf/sites-enabled
ADD supervisor.conf /etc/supervisor/conf.d/supervisord.conf
ADD nginx.conf /etc/nginx/nginx.conf
