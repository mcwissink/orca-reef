#!/bin/bash
# TODO: link to LMMS source
lmms "./$1/$1.mmp" > /dev/null 2>&1 &
PID=$!
trap "kill $PID" EXIT
# TODO: link to orca-c source
~/repos/orca-c/build/orca "./$1/$1.orca"
