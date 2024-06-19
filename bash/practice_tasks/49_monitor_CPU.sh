#!/bin/bash
# Task 49: Monitor CPU Usage
# Write a bash script that monitors CPU usage and alerts if it exceeds a certain threshold. The threshold should be provided as an argument.

set -e

# Check if threshold is provided
if [ -z "$1" ]; then
  echo "Usage: $0 threshold"
  exit 1
fi

# Monitor CPU usage
while true; do
  # Use `top` command to get CPU usage statistics for one iteration (`-bn1`).
  # Extract the line containing "Cpu(s)" and use `sed` to extract the idle percentage.
  # Then use `awk` to calculate the CPU usage percentage.
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
  
  # Extract the numerical value of CPU usage percentage.
  cpu_usage_value=$(echo $cpu_usage | cut -d'%' -f1)
  
  # Compare the current CPU usage value with the provided threshold ($1).
  # Use `bc` command for floating-point comparison.
  if (( $(echo "$cpu_usage_value > $1" | bc -l) )); then
    # If CPU usage exceeds the threshold, print an alert message.
    echo "CPU usage is above $1%: $cpu_usage"
  fi
  
  # Wait for 5 seconds before checking CPU usage again.
  sleep 5
done
