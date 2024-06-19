#!/bin/bash
# Task 33: Display System Information
# Display various system information (e.g., hostname, kernel version, memory usage).

# Display system information
echo "Hostname: $(hostname)"
echo "Kernel version: $(uname -r)"
echo "Memory usage: $(free -h)"
