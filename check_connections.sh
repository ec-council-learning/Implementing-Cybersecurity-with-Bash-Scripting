#!/bin/bash

# Check to make sure the argument was submitted
if [ -z "$1" ]; then
  echo "Usage: $0 <port1,port2,...>"
  exit1
fi

ports=$1
echo "Checking for anomalous network connections on ports: $ports..."
netstat -tuln | grep -E "($(echo $ports | sed 's/,/|/g’))”


