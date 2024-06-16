#!/bin/bash
# Task 28: Monitor a Log File
# Monitor a log file and print new entries as they are added. The log filename should be provided as an argument.

set -e

# Check if a log filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 log_filename"
  exit 1
fi

# Monitor the log file (needs permission)
sudo tail -f "$1"
