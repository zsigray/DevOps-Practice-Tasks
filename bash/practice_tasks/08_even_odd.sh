#!/bin/bash
# Task 8: Check if a Number is Even or Odd
# Check if a number provided as an argument is even or odd.

# Check if a number is provided
if [ -z "$1" ]; then
  echo "Usage: $0 number"
  exit 1
fi

# Check if the number is even or odd
if [ $(($1 % 2)) -eq 0 ]; then
  echo "$1 is even"
else
  echo "$1 is odd"
fi
