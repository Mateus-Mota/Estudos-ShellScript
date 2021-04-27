#!/bin/bash

arquivo=$1
numero=$2
counter=0

while read line; do
	
	counter=$(($counter + 1 ))
	if (( $counter == $numero )); then
	echo -e "$line"
	fi

done < "$arquivo"
