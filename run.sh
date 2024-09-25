#!/bin/bash

# Start the command in the background
lmms "./$1/$1.mmp" > /dev/null 2>&1 &
PID=$!

# Set up a trap to kill the background process on script exit
trap "kill $PID" EXIT

# Your script continues here
echo "Command is running in the background with PID $PID"

# Perform other tasks
~/repos/Orca-c/build/orca "./$1/$1.orca"

# The script will exit, and the trap will kill the background process
echo "Script exiting"
