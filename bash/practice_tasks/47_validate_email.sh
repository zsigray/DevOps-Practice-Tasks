#!/bin/bash
# Task 47: Validate an Email Address
# Write a bash script that validates an email address using a regular expression. The email address should be provided as an argument.

# Check if an email address is provided
if [ -z "$1" ]; then
  echo "Usage: $0 email_address"
  exit 1
fi

# Validate the email address
if [[ "$1" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "$1 is a valid email address."
else
  echo "$1 is not a valid email address."
fi
