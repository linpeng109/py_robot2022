#!/bin/bash
systemctl status openresty | grep 'Started The OpenResty Application Platform.'
if [ $? != 0 ]; then
    exit 1
fi

test /usr/local/openresty/nginx/conf.d/dangerstr
if [ $? !=0 ]; then
    exit 1
fi

grep -v '#' /usr/local/openresty/nginx/conf.d/vhosts.conf | grep 'dangerstr'
if [ $? != 0 ]; then
    exit 1
fi

exit 0
