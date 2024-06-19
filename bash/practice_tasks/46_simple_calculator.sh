#!/bin/bash
# Task 46: Implement a Simple Calculator
# Write a bash script that acts as a simple calculator. The operation (add, subtract, multiply, divide) and two operands should be provided as arguments.

# Check if operation and operands are provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 operation operand1 operand2"
  exit 1
fi

# Perform the calculation
case $1 in
  add)
    result=$(($2 + $3))
    ;;
  subtract)
    result=$(($2 - $3))
    ;;
  multiply)
    result=$(($2 * $3))
    ;;
  divide)
    result=$(($2 / $3))
    ;;
  *)
    echo "Invalid operation. Use add, subtract, multiply, or divide."
    exit 1
    ;;
esac

# Print the result
echo "Result: $result"
