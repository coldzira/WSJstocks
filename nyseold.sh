#!/bin/bash
#CS288 Project
#HW7

c=0
while [ $c -lt 60 ]:
do
    DATE=$(date +%Y-%m-%d-%H-%M-%S)
    FILE=$DATE-ss.html
    URL=http://www.wsj.com/mdc/public/page/2_3021-activnyse-actives.html
    wget $URL -O $FILE
    java -jar tagsoup-1.2.1.jar --files $FILE
    python extract.py $DATE-ss.xhtml
    ((c++))
    sleep 1m
done