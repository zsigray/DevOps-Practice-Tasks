#!/bin/bash
# Task 5: Fetch JSON Data with `curl` and Parse with `jq`
# Fetch JSON data from a given URL and extract a specific field using `jq`. The URL and field name should be provided as arguments.

# EXAMPLE: https://jsonplaceholder.typicode.com/users email


# Check if URL and field name are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 url field"
  exit 1
fi

# Fetch JSON data and extract the field

# If there is only one object:
# curl -s "$1" | jq -r ".$2"

# More objects:
json_data=$(curl -s "$1")
field_value=$(echo "$json_data" | jq -r ".[0].$2")

echo "The value of the field '$2' is: $field_value"