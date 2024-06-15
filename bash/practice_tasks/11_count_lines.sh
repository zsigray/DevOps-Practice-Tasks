#!/bin/bash
# Task 11: Count the Number of Lines in a File
# Count the number of lines in a file. The filename should be provided as an argument.

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Count the number of lines in the file
line_count=$(($(wc -l < "$1") + 1))

# Print the result
echo "The file $1 has $line_count lines."
