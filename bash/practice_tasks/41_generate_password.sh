#!/bin/bash
# Task 41: Generate a Random Password
# Generate a random password of a given length. The length should be provided as an argument.

# Check if a length is provided
if [ -z "$1" ]; then
  echo "Usage: $0 length"
  exit 1
fi

# Generate the random password
tr -dc 'A-Za-z0-9' < /dev/urandom | head -c "$1"
echo
