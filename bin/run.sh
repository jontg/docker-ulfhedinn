#!/bin/bash

BASE_DIR=/mnt/apps
mkdir -p $BASE_DIR/tt-rss/{logs,backups}
docker run -d \
    -v $BASE_DIR/tt-rss/logs:/logs \
    -v $BASE_DIR/tt-rss/backups:/backups \
    -P \
    rpi-tt-rss:latest
