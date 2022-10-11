#!/bin/bash
test -f /var/www/html/wshell.php
if [ $? == 0 ]; then
    #echo "wshell.php 文件不存在 已清除加固"
    exit 1
fi
#echo "wshell.php 文件存在  未清除加固"
exit 0
