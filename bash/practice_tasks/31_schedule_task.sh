#!/bin/bash
# Task 31: Schedule a Task with `cron`
# Schedule a task to run at a specified time using `cron`. The task and time should be provided as arguments.

set -e

# Check if time and task are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 'time' 'task'"
  exit 1
fi

time="$1"
task="$2"


# Schedule the task
(crontab -l 2>/dev/null; echo "$time $task") | crontab -

echo "Task scheduled: '$task' at '$time'"
