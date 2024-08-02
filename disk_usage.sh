#!/bin/bash

echo "Disk Usage Information:"
df –h

echo "General System Information:"
uname -a

if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"
echo "Disk Usage for $directory:"
du -sh "$directory“

