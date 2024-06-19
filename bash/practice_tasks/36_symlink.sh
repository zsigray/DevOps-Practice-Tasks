#!/bin/bash
# Task 36: Create a Symlink
# Create a symbolic link to a file. The target and link names should be provided as arguments.

set -e

# Check if target and link names are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 target link_name"
  exit 1
fi

# Create the symbolic link
ln -s "$1" "$2"
echo "Symbolic link $2 created for $1."
