#!/bin/bash

#if [ -z "$1" ]; then
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <hostname> <start_port> <end_port>"
  exit 1
fi

hostname=$1
start_port=$2
end_port=$3

#for port in {1..1024}; do
for port in $(seq $start_port $end_port); do
  nc -zv $hostname $port 2>&1 | grep succeeded
done


