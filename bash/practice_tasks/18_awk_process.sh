#!/bin/bash
# Task 18: Use `awk` to Process a File
# Use `awk` to print a specified column of a file. The filename and column number should be provided as arguments.

set -e

# Check if a filename and column number are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 filename column_number"
  exit 1
fi

filename="$1"
column_number="$2"

# Validate that the column number is a positive integer
if ! [[ "$column_number" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Column number must be a positive integer."
  exit 1
fi

# Print the specified column
awk -v col="$column_number" '{print $col}' "$filename"
