#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"
echo "File Attributes for $filename:"
ls -l "$filename"
stat "$filename“

