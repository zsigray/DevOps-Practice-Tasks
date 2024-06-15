#!/bin/bash
# Task 2: List Files in a Directory
# List all files in the current directory.
ls -l

# SUBSHELL

files=$(ls)
echo
echo "$files"