#!/bin/bash
# Task 45: Print Fibonacci Sequence
# Write a bash script that prints the first N numbers in the Fibonacci sequence. The value of N should be provided as an argument.

set -e

# Check if N is provided
if [ -z "$1" ]; then
  echo "Usage: $0 N"
  exit 1
fi

# Print Fibonacci sequence
a=0
b=1

echo -n "$a $b"
for (( i=2; i<$1; i++ )); do
  fib=$((a + b))
  echo -n " $fib"
  a=$b
  b=$fib
done
echo
