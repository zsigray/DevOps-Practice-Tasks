#!/bin/bash
# Task 21: Compress a File
# Compress a file using `gzip`. The filename should be provided as an argument.

set -e

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Compress the file
gzip "$1"
echo "File $1 compressed."
