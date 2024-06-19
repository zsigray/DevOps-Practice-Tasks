#!/bin/bash
# Task 44: Parse Command-Line Arguments
# Write a bash script that parses and prints command-line arguments in a key-value format.

set -e

# Check if there are arguments
if [ $# -eq 0 ]; then
  echo "Usage: $0 key1=value1 key2=value2 ..."
  exit 1
fi

# Parse and print key-value pairs
for arg in "$@"; do
  key=$(echo "$arg" | cut -d '=' -f 1)
  value=$(echo "$arg" | cut -d '=' -f 2)
  echo "$key: $value"
done
