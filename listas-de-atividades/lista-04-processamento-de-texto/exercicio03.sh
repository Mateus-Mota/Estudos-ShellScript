#!/bin/bash


if (( $(cat $arquivo | wc -l) >= $numero )) ;then

	while read line; do
	
		counter=$(($counter + 1 ))
		if (( $counter == $numero )); then
			echo -e "$line"
		fi

	done < "$arquivo"
