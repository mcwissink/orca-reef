#!/bin/bash
lmms "./$1/$1.mmp" > /dev/null 2>&1 &
PID=$!
trap "kill $PID" EXIT
~/repos/Orca-c/build/orca "./$1/$1.orca"
