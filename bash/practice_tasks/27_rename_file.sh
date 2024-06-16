#!/bin/bash
# Task 27: Rename a File
# Rename a file. The old and new filenames should be provided as arguments.

set -e

# Check if old and new filenames are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 old_filename new_filename"
  exit 1
fi

# Rename the file
mv "$1" "$2"
echo "File $1 renamed to $2."
