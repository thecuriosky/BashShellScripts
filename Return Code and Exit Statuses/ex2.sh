#!/bin/bash
if [ -f $1 ]
then
	echo "It is a regular file"
	exit 0
elif [ -d $1 ]
then
	echo "It is a directory"
	exit 1
else
	echo "Other file type"
	exit 2
fi
