#!/bin/bash
# Task 40: Convert a String to Uppercase
# Convert a given string to uppercase. The string should be provided as an argument.

# Check if a string is provided
if [ -z "$1" ]; then
  echo "Usage: $0 string"
  exit 1
fi

# Convert the string to uppercase
echo "$1" | tr '[:lower:]' '[:upper:]'
