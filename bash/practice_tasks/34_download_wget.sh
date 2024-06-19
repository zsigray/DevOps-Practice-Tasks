#!/bin/bash
# Task 34: Download a File with `wget`
# Download a file from a given URL using `wget`. The URL should be provided as an argument.

# Check if a URL is provided
if [ -z "$1" ]; then
  echo "Usage: $0 url"
  exit 1
fi

# Download the file
wget "$1"
echo "File downloaded from $1."
