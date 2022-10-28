#!/bin/bash

for (( i=0; i<=101; i++ )) do
	if (( ${i} % 2 == 0 && ${i} != 0 ));then
		echo  "${i}"
	fi
done       
