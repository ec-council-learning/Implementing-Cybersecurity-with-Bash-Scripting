#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

url=$1

for port in {80,443}; do
  echo "Scanning $url on port $port..."
  nc -zv $url $port
  curl -I http://$url:$port
done



