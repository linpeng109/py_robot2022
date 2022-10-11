#!/bin/bash
grep -v '#' /usr/local/openresty/nginx/conf.d/vhosts.conf | grep 'dangerstr'
if [ $? == 0]; then
    exit 0
else
    exit 1
fi
