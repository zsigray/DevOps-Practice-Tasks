#!/bin/bash
# Task 25: Copy a File
# Copy a file from one location to another. The source and destination filenames should be provided as arguments.

set -e

# Check if source and destination filenames are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 source_file destination_file"
  exit 1
fi

# Copy the file
cp "$1" "$2"
echo "File $1 copied to $2."
