#!/bin/bash
function file_count(){
	for i in $@
	do
 		if [ -d $i ]
		then
        		local COUNT=$( $i | ls | wc -l )
        		echo "No. of file in ${i}: $COUNT"
		else
			echo "Not a directory"
		fi
	done
}

file_count /var /etc /usr/bin

