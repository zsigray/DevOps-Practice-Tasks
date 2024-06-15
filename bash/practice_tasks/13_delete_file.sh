#!/bin/bash
# Task 13: Delete a File
# Delete a file. The filename should be provided as an argument.

set -e

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Delete the file
rm -f "$1"
echo "File $1 deleted."
