#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username="$1"
echo "Login Records for $username:"
last | grep "$username"

echo "Command History for $username:"
history | grep "$username"


