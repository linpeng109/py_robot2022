#!/bin/bash
systemctl status firewalld | grep 'Started firewalld'
if [ $? != 0 ]; then
    exit 1
fi
exit 0
