#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <interface> <filter>"
    exit 1
fi

interface=$1
filter=$2
sudo tcpdump -i $interface $filter

