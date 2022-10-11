#!/bin/bash
stat /opt/showPrivKey | grep '4755'
if [ $? == 0 ]; then
    exit 1
fi
exit 0
