#!/bin/bash
# Task 1: Print "Hello, World!"
# Print "Hello, World!" to the terminal.

echo "Hello, World!"


#-- PRACTICING SIMPLE VARIABLES, PARAMETERS --#

name="Zsofi"

echo 'Hello $name!'  # single quotes - not OK 
echo "Hello $name!"

namefromargument=$1
echo "Hello $namefromargument!"


# Default variables - all uppercase 
# env
echo "Hello $USER!"