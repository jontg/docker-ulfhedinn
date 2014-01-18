FROM resin/rpi-raspbian
MAINTAINER jon.gretarsson@gmail.com
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q nginx openssh-server supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor

CMD ["/usr/bin/supervisord"]

VOLUME ["/etc/nginx/sites-available", "/etc/nginx/sites-enabled"]

ADD supervisor.conf /etc/supervisor/conf.d/supervisord.conf
ADD nginx.conf /etc/nginx/nginx.conf
