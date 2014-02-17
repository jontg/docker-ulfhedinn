FROM resin/rpi-raspbian
MAINTAINER jon.gretarsson@gmail.com
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q nginx supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

EXPOSE 80 443

ADD sites-enabled /etc/nginx/sites-enabled
ADD supervisor.conf /etc/supervisor/supervisord.conf
ADD nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-available/default
