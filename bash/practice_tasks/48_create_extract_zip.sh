#!/bin/bash
# Task 48: Create and Extract a Zip Archive
# Write a bash script that creates a zip archive of a directory and extracts it. The directory name and zip filename should be provided as arguments.

set -e

# Check if directory name and zip filename are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 directory_name zip_filename"
  exit 1
fi

# Create the zip archive
zip -r "$2.zip" "$1"
echo "Created zip archive $2.zip."

# Extract the zip archive
unzip "$2.zip" -d "${2}_extracted"
echo "Extracted zip archive to ${2}_extracted."
