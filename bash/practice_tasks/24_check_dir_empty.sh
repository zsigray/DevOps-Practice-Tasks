#!/bin/bash
# Task 24: Check if a Directory is Empty
# Check if a directory is empty. The directory name should be provided as an argument.

set -e

# Check if a directory name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 directory_name"
  exit 1
fi

# Check if the directory is empty (= there is no 1st element in the file list)
if [ -z "$(ls -A "$1")" ]; then
  echo "Directory $1 is empty."
else
  echo "Directory $1 is not empty."
fi
