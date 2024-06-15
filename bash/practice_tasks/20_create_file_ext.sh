#!/bin/bash
# Task 20: Create a File with a Specific Extension
# Create a file with a specific extension. The filename and extension should be provided as arguments.

set -e

# Check if filename and extension are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 filename extension"
  exit 1
fi

# Create the file with the specific extension
touch "$1.$2"
echo "File $1.$2 created."
