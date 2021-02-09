#!/bin/bash
function file_count(){
	
	local COUNT=$( pwd | ls | wc -l )
	echo $COUNT
}

file_count
