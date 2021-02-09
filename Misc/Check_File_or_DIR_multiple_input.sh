#!/bin/bash

for i in $@
do
	if [ -f $i ]
	then
        	echo "regular file"
       		ls -lrth $i
	elif [ -d $i ]
	then
        	echo "directory"
        	ls -lrth $i
	else
        	echo "file doesnt exists"
	fi
done
