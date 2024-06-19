#!/bin/bash
# Task 43: Find and Replace Text in Multiple Files
# Find and replace text in multiple files within a directory. The directory name, search string, and replacement string should be provided as arguments.

# Check if directory name, search string, and replacement string are provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 directory_name search_string replacement_string"
  exit 1
fi

# Find and replace the text
find "$1" -type f -exec sed -i "s/$2/$3/g" {} +
echo "Replaced '$2' with '$3' in files within $1."
