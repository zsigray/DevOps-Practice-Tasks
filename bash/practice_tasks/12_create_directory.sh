#!/bin/bash
# Task 12: Create a Directory
# Create a new directory. The directory name should be provided as an argument.

# Check if a directory name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 directory_name"
  exit 1
fi

# Create the directory
mkdir -p "$1"
echo "Directory $1 created."
