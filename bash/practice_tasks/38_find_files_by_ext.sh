#!/bin/bash
# Task 38: Find Files by Extension
# Find all files with a specific extension in a directory. The directory name and extension should be provided as arguments.

# Check if directory name and extension are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 directory_name extension"
  exit 1
fi

# Find the files
find "$1" -name "*.$2"
