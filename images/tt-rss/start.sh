#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

# I don't know how to start this silly daemon from supervisord
service php5-fpm start

# Give MySQL a few seconds to start up
sleep 5

if ! mysql -u root -ptt-rss -e 'use tt_rss'; then
  echo "World appears to be uninitialized; creating table and setting the password"
  mysqladmin -u root password 'tt-rss'
  mysqladmin -u root -ptt-rss create tt_rss

  chmod -R 777 /var/www/tt-rss/{cache/images,cache/upload,cache/export,cache/js,feed-icons,lock}
fi

if [ "$(ls -A /backups)" ]; then
  if [ ! -z $DO_RESTORE ]; then
    FILE=$(ls -t /backups | head -n1)
    echo "Restoring from /backups/$FILE"
    mysql -u root -ptt-rss tt_rss < /backups/$FILE
  fi
fi

echo DONE
