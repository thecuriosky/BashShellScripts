#!/bin/bash

read -p "enter: " entry

if [ -f $entry ]
then
	echo "regular file"
	ls -lrth $entry
elif [ -d $entry ]
then
	echo "directory"
	ls -lrth $entry
else
	echo "file doesnt exists"
fi
