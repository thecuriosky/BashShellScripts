#!/bin/bash

printf "1. Show disk usage.\n"
printf "2. Show system uptime.\n"
printf "3. Show the users logged into the system.\n"

while true
do
read -p "What would you like to do? (Enter q to quit.) " choice
	case "$choice" in
		1)
			df -h
			;;
		2)
			uptime
			;;
		3)
			who
			;;
		q | Q)
			printf "Good Bye!"
			break
			;;
		*)
			printf "Invalid Option, Try again"
	esac
done
