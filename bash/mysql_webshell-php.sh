#!/bin/bash

systemctl status mariadb | grep 'Started MariaDB database server.'
if [ $? != 0]; then
    exit 1
fi

mysql -e 'show databases;' | grep 'attackDemo*'
if [$? == 0]; then
    exit 1
fi

netstat -tunpl | grep 3306
if [ $? == 0]; then
    exit 1
fi

exit 0
