#!/bin/bash

analyze_logs() {
    local log_file=$1
    local keyword=$2
    grep "$keyword" "$log_file" > /tmp/filtered_logs.txt
    echo "Filtered logs saved to /tmp/filtered_logs.txt"
}
  
# Analyze logs
analyze_logs $pathToTheLogFile $keyword
