#!/bin/bash

dat=$(date '+%Y-%H-%d')
for file in *.jpg
do
	echo "Renaming $file"
	mv ${file} "${dat}-${file}"
done	
