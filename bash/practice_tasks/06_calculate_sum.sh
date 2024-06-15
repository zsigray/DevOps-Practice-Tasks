#!/bin/bash
# Task 6: Calculate the Sum of Two Numbers
# Calculate the sum of two numbers provided as arguments.

# Check if two arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 num1 num2"
  exit 1
fi

# Calculate the sum
sum=$(($1 + $2))
echo "The sum is: $sum"
