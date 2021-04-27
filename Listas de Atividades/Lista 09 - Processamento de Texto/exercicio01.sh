#!/bin/bash

arquivo=$1
numero=$2
counter=0

if [ ! -f $arquivo ]; then
	echo "Arquivo não existe"
fi

if (( $(cat $arquivo | wc -l) < $numero )); then
	echo "O arquivo só possui $(cat $arquivo | wc -l) linhas"
fi

if (( $(cat $arquivo | wc -l) >= $numero )) ;then

	while read line; do
	
		counter=$(($counter + 1 ))
		if (( $counter == $numero )); then
			echo -e "$line"
		fi

	done < "$arquivo"

fi

