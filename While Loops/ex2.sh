#!/bin/bash

LINE_NUM=1
read -p "How many lines of /etc/passwd would you like to see? " LIMIT

while read LINE
do
       if [ $LINE_NUM -gt $LIMIT ]
       then
	       break
	else
		echo "${LINE_NUM}: ${LINE}"
		((LINE_NUM++))
	fi
done < /etc/passwd
