#!/bin/bash
# thinkphp
docker cp d8ca:/var/www/html/public/index.php /tmp/index.php
grep '/../thinkphp/start.php' /tmp/index.php
if [ $? != 0]; then
    exit 1
fi
exit 0
