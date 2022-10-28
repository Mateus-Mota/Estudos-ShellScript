#!/bin/bash

read -p "Valor A: " a
read -p "Valor B: " b
total=0
for (( i=$a; i<=$b; i++)) do
	total=$(( ${total} + ${i} ))
done
echo $total
	
