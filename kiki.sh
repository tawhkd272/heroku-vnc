#!/bin/sh
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

u="c"
while [ $u = "c" ]
do
   now=$(date +"%T")
   echo "Current time : $now"
   echo -e "${RED}current time :$now ${ENDCOLOR}"
   touch teemy.txt
   sleep 5
   git add .
   sleep 5
   git commit -m "commit messadjs" 
   sleep 5
   git push origin master --force
   sleep 10
   rm teemy.txt
   sleep 5
   git add .
   sleep 5
   git commit -m "commit messadjs" 
   sleep 5
   git push origin master --force   
   sleep 6
   now=$(date +"%T")
   echo "Current time : $now"
   echo -e "${RED}current time :$now ${ENDCOLOR}"
   sleep 750
done