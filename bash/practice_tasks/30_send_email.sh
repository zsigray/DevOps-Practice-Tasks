#!/bin/bash
# Task 30: Send an Email
# Send an email with a given subject and body. The recipient email address, subject, and body should be provided as arguments.

set -e

# Check if email address, subject, and body are provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 email_address subject body"
  exit 1
fi

# Send the email (using `mail` command, which must be configured on the system)
echo "$3" | mail -s "$2" "$1"
echo "Email sent to $1."
