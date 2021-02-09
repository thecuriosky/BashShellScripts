#!/bin/bash

shadow="/etc/shadow"

if [ -e $shadow ]
then

	echo "Shadow passwords enabled"
	if [ -w $shadow ]
	then
		echo "You have permissions to edit /etc/shadow"
	else
		echo "You do NOT have permissions to edit /etc/shadow."
	fi
else
	echo "Shadow passwords not enabled"
fi
