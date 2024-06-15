#!/bin/bash
# Task 4: Use `sed` to Replace Text in a File
# Use `sed` to replace all occurrences of the word "foo" with "bar" in a file. The filename should be provided as an argument.

# Check if a filename is provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 filename replacewhat replacewith"
  exit 1
fi

# Replace 2nd argument with 3rd argument
sed -i "s/$2/$3/g" "$1"
