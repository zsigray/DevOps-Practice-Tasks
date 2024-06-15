#!/bin/bash
# Task 16: Find a String in a File
# Search for a string in a file and print the matching lines. The filename and string should be provided as arguments.

set -e
 
# Check if filename and string are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 filename string"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found."
  exit 1
fi

# Search for the string in the file and print line and character positions
grep -n "$2" "$1" | while IFS=: read -r line_num line; do
  echo "Found on line: $line_num"
  start_pos=0
  while [[ $line =~ $2 ]]; do
    match_pos=$(echo "$line" | grep -b -o "$2" | head -n 1 | cut -d: -f1)
    match_pos=$((match_pos + start_pos + 1))
    echo "Character position: $match_pos"
    line=${line:match_pos}
    start_pos=$((start_pos + match_pos))
    exit 1
  done
done

# Check if grep found any matches
#if ! mycmd; then
  echo "String '$2' not found in file '$1'."
#fi
