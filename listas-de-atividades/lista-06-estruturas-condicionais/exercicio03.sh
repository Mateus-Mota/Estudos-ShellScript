#!/bin/bash

echo  "## DIRS ##"

for arq in $(ls); do
	if [ -d "$arq" ]; then
		echo $arq
	fi
done

echo "## FILES ##"
for arq in $(ls); do
	if [ -e "$arq" ]; then
		echo $arq
	fi
done

echo "## LINKS ##"
for arq in $(ls); do
	if [ -h "$arq" ]; then
		echo $arq
	fi
done
