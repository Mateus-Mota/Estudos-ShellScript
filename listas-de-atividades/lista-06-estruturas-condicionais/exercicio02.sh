#!/bin/bash

if [ -z "${x}" ]; then
	read -p "Digite o valor de x: " x
	export x
fi

if [ -z "${y}" ]; then
	read -p "Digite o valor de y: " y
	export y
fi

if [ -z "${z}"]; then
	read -p "Digite o valor de z: " z
	export z
fi

echo "$(( ${x} + ${y} + ${z} ))"
