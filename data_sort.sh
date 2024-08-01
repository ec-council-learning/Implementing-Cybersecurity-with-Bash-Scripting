#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <input_file"
  exit 1
fi

input_file="$1"
sorted_file="sorted_$input_file"
sorted_uniq_file="sorted_uniq_$input_file"

sort "$input_file" > "$sorted_file"
uniq "$sorted_file" > "$sorted_uniq_file"

echo "Sorted data saved in $sorted_file"
echo "Sorted and deduplicated data saved in $sorted_uniq_file”


