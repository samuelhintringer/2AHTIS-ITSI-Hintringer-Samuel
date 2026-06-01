#!/bin/bash

change=0
filepath1=$(pwd)
filepath2="/home/runner/workspace/"

if [ "$filepath1" != $filepath2 ]; then
	change=1
	cd $filepath2
fi

git fetch 
git merge -m "sync upstream"
git push origin main

git fetch
git add .
git commit -m "commit"
git pull
git push
git merge -m "merge"

if [ "$change" -eq 1 ]; then
	cd $filepath1
fi


