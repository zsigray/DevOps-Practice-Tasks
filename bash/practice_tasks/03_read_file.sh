#!/bin/bash
# Task 3: Read a File and Print its Content
# Read a file and print its content to the terminal. The filename should be provided as an argument.

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Read and print the file content
cat "$1"
