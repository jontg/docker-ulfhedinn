#!/bin/bash

# I don't know how to start this silly daemon from supervisord
service php5-fpm start

# Give MySQL a few seconds to start up
sleep 5

if [ ! mysql -e 'use ttrss' ]; then
  mysqladmin create ttrss
fi
