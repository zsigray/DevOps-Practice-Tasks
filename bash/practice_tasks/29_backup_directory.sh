#!/bin/bash
# Task 29: Create a Backup of a Directory
# Create a backup of a directory by compressing it into a `.tar.gz` file. The directory name and backup filename should be provided as arguments.

set -e

# Check if directory name and backup filename are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 directory_name backup_filename"
  exit 1
fi

# Create the backup
tar -czf "$2" "$1"
echo "Backup of directory $1 created as $2."
