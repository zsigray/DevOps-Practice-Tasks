#!/bin/bash
# Task 10: Append Text to a File
# Append a line of text to a file. The filename and text should be provided as arguments.

# Check if filename and text are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 filename text"
  exit 1
fi

# Append the text to the file
echo "$2" >> "$1"
