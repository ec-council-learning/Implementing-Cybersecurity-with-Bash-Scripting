#!bin/bash

# Search the Syslog for errors
grep -i "error" /var/log/syslog > ~/tmp/error_logs.txt

echo "Suspcious activity logged to /tmp/error_logs.txt"



