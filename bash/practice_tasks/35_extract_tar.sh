#!/bin/bash
# Task 35: Extract a Tar Archive
# Extract a `.tar.gz` archive. The archive filename should be provided as an argument.

# Check if an archive filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 archive_filename"
  exit 1
fi

# Extract the archive
tar -xzf "$1"
echo "Archive $1 extracted."
