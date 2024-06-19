#!/bin/bash
# Task 39: Display a Progress Bar
# Display a progress bar for a given task, e.g., copying files.

set -x

# Function to display usage information
usage() {
  echo "Usage: $0 <source_directory> <destination_directory>"
  exit 1
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  usage
fi

SOURCE_DIR=$1
DEST_DIR=$2

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory does not exist."
  exit 1
fi

# Create destination directory if it does not exist
mkdir -p "$DEST_DIR"

# Initialize variables for progress bar
total_files=0
copied_files=0

# Function to count total files in source directory recursively
count_files() {
  total_files=$(find "$SOURCE_DIR" -type f | wc -l)
}

# Function to display progress bar
display_progress() {
  local progress=$((copied_files * 100 / total_files))
  echo -ne "Progress: $progress%\r"
}

# Copy files from source to destination
copy_files() {
  find "$SOURCE_DIR" -type f -print0 | while IFS= read -r -d '' file; do
    cp "$file" "$DEST_DIR"
    ((copied_files++))
    display_progress
  done
}

# Count total files
count_files

# Display initial progress bar
display_progress

# Copy files and update progress
copy_files

# Complete message
echo -ne "\nCopying complete.\n"
