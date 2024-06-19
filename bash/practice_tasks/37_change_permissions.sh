#!/bin/bash
# Task 37: Change File Permissions
# Change the permissions of a file. The filename and permissions should be provided as arguments.

set -e

# Check if filename and permissions are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 filename permissions"
  exit 1
fi

# Change the file permissions
chmod "$2" "$1"
echo "Permissions of file $1 changed to $2."
