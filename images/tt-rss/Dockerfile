FROM resin/rpi-raspbian:wheezy
MAINTAINER jon.gretarsson@gmail.com
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q openssh-server supervisor wget cron

RUN mkdir -p /var/run/sshd

CMD ["/usr/bin/supervisord"]

RUN apt-get install -y nginx php5-fpm php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php5-cgi mysql-server

RUN mkdir -p /backups /logs /var/www/tt-rss

RUN wget -O - https://github.com/gothfox/Tiny-Tiny-RSS/archive/1.11.tar.gz | tar -C /var/www/tt-rss/ --strip-components=1 -xz

RUN sed -i '/cgi\.fix_pathinfo=1/c\cgi.fix_pathinfo=0;' /etc/php5/fpm/php.ini && chown -R www-data:www-data /var/www/
ADD supervisor.conf /etc/supervisor/conf.d/supervisord.conf
ADD start.sh /bin/start.sh
ADD nginx-tt-rss /etc/nginx/sites-available/default
RUN crontab -e < /etc/cron.d/tt-rss

EXPOSE 80
