#!/bin/bash
# Task 19: Perform a Simple Calculation
# Perform a simple arithmetic calculation (addition, subtraction, multiplication, or division) based on user input.

set -e

# Prompt the user for input
echo "Enter two numbers and an operator (+, -, *, /):"
read num1 operator num2

# Perform the calculation
case $operator in
  +) result=$(($num1 + $num2)) ;;
  -) result=$(($num1 - $num2)) ;;
  \*) result=$(($num1 * $num2)) ;;
  /) result=$((num1 / num2)) ;;
  *) echo "Invalid operator" ;;
esac

# Print the result
echo "The result is: $result"
