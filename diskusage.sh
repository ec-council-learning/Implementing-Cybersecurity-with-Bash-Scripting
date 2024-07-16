#!/bin/bash

while true
do
    usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
    if [ $usage -gt 80 ]
    then
      echo "Warning: Disk usage is above 80%."
fi
sleep 60
done


