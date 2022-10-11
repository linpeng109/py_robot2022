#!/bin/bash
svn checkout svn://172.16.10.8/website /tmp --username zhangsan --password zhangsan123
ls /tmp | grep 'controllers.java'
if [ $? == 0 ]; then
    exit 1
fi
exit 0
