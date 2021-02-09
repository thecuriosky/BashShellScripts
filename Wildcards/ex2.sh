#!/bin/bash

read -p "Enter the file extension: " extension
read -p "Enter prefix to prepend to the file name: " prefix

# assigning a default value in case user doesnot enters the prefix
prefix=${prefix:-$(date '+%Y-%H-%d')}

echo $prefix

for file in *.${extension}
do
	echo "Renaming $file to ${prefix}-${file}"
	mv $file ${prefix}-${file}
done
