#!/bin/bash
# Task 50: Set and Get Environment Variables
# Write a bash script that sets and gets environment variables. The variable name and value should be provided as arguments.

# Check if variable name and value are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 variable_name variable_value"
  exit 1
fi

# Set the environment variable
export "$1=$2"

# Get and print the environment variable
echo "$1=$(printenv "$1")"
