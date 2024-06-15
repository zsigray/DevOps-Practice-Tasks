#!/bin/bash
# Task 9: Create a Function to Greet a User
# Define a function to greet a user by name. The name should be provided as an argument.

# Function to greet a user
greet() {
  echo "Hello, $1!"
}

# Check if a name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 name"
  exit 1
fi

# Greet the user
greet "$1"

# Greet user environment variable
greet "$USER"
