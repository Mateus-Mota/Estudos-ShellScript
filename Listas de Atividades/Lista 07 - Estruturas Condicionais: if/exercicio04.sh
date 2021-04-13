#!/bin/bash

for arq in $(ls); do
	if [ -x $arq ]; then
		echo "${arq} é executável e será removido."
		rm ${arq}
	fi
done
