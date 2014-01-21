FROM resin/rpi-raspbian:wheezy
MAINTAINER jon.gretarsson@gmail.com
RUN apt-get -y update

RUN apt-get install -y nginx php5-fpm php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php5-cgi mysql-server

RUN sed -i '/cgi\.fix_pathinfo=1/c\cgi.fix_pathinfo=0;' /etc/php5/fpm/php.ini
RUN ln -s /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default

ADD nginx-tt-rss /etc/nginx/sites-available/default
