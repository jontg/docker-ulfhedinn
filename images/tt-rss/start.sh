#!/bin/bash

# I don't know how to start this silly daemon from supervisord
/usr/sbin/service php5-fpm start

# Give MySQL a few seconds to start up
/bin/sleep 5

if [ ! /usr/bin/mysql -e 'use ttrss' ]; then
  /usr/bin/mysqladmin create ttrss
fi
