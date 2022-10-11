#!/bin/sh

docker exec acdd ffmpeg -version | grep 3.1.3
if [ $? == 0 ]; then
    exit 1
fi
exit 0
