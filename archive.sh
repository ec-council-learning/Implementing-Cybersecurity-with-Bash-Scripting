#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <log_directory>"
  exit 1
fi

log_dir="$1"
archive_dir="/archive/logs"
mkdir -p "$archive_dir"

logs=($(ls "$log_dir"))

for log in "${logs[@]}"; do
  tar -czf "$archive_dir/$log.tar.gz" "$log_dir/$log"
  echo "Archived $log"
done


