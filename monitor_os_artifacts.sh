#!/bin/bash

echo "Recent system logs:“
journalctl -xe 

echo "Watching /etc/passwd for changes:“
auditctl -w /etc/passwd -p wa -k passwd_changes 

echo "Open files in /var/log:“
lsof /var/log 

echo "Monitoring /tmp for changes:“
inotifywait -m /tmp


