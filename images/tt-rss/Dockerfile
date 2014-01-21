FROM resin/rpi-raspbian:wheezy
MAINTAINER jon.gretarsson@gmail.com
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y -q openssh-server supervisor

CMD ["/usr/bin/supervisord"]

RUN apt-get install -y nginx php5-fpm php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php5-cgi mysql-server openssl-server

RUN sed -i '/cgi\.fix_pathinfo=1/c\cgi.fix_pathinfo=0;' /etc/php5/fpm/php.ini
ADD supervisor.conf /etc/supervisor/conf.d/supervisord.conf
ADD nginx-tt-rss /etc/nginx/sites-available/default
