#!/bin/bash
# Task 39: Display a Progress Bar
# Display a progress bar for a given task.

set -e

# Display the progress bar
for i in {1..100}; do
  echo -ne "Progress: $i%\r"
  sleep 0.1
done
echo -ne "\n"
