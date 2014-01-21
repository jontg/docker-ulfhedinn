#!/bin/bash

BASE_DIR=/mnt/apps
mkdir -p $BASE_DIR/tt-rss/{logs,backups}
docker run -d \
    -v $BASE_DIR/tt-rss/logs:/logs \
    -v $BASE_DIR/tt-rss/backups:/backups \
    -p 2222:22 \
    -p 80:80 \
    rpi-tt-rss:latest
