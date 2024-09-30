#!/bin/bash
cp -r .template "$1"
mv "$1/.template.orca" "$1/$1.orca"
mv "$1/.template.mmp" "$1/$1.mmp"
