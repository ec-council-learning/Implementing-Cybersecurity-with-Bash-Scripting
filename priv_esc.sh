#!/bin/bash

echo "Checking for SUID bit files..."
find / -perm -4000 2>/dev/null

echo "Analyzing dropped malware for suspicious behavior..."
strace -o trace_output.txt /path/to/malware

