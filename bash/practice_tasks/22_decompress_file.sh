#!/bin/bash
# Task 22: Decompress a File
# Decompress a `.gz` file using `gunzip`. The filename should be provided as an argument.

set -e

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Decompress the file
gunzip "$1"
echo "File $1 decompressed."
