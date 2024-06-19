#!/bin/bash
# Task 42: Check if a String is a Palindrome
# Check if a given string is a palindrome. The string should be provided as an argument.

set -e

# Check if a string is provided
if [ -z "$1" ]; then
  echo "Usage: $0 string"
  exit 1
fi

# Check if the string is a palindrome
if [ "$1" == "$(echo "$1" | rev)" ]; then
  echo "$1 is a palindrome."
else
  echo "$1 is not a palindrome."
fi
