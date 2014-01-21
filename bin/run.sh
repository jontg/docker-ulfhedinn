#!/bin/bash

BASE_DIR=/mnt/apps
mkdir -p $BASE_DIR/tt-rss/{logs,backups}
docker run -d \
    -v /logs:$BASE_DIR/tt-rss/logs \
    -v /backups:$BASE_DIR/tt-rss/backups \
    -p 80:80 \
    rpi-tt-rss:latest
