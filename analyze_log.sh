#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

log_file="$1"
awk '{print $1}' "$log_file" > analyzed_data.txt
echo "Analyzed data saved in analyzed_data.txt“
