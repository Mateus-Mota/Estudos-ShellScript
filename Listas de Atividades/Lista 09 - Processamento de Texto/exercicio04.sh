#!/bin/bash

read -p "Digite o endereço IP: " ip

octeto1=$(echo $ip | awk -F. '{print $1}')
octeto2=$(echo $ip | awk -F. '{print $2}')
octeto3=$(echo $ip | awk -F. '{print $3}')
octeto3=$(echo $ip | awk -F. '{print $4}')
echo "Octeto 1: " && echo "obase=2; $octeto1" | bc
echo "Octeto 2: " && echo "obase=2; $octeto2" | bc
echo "Octeto 3: " && echo "obase=2; $octeto3" | bc
echo "Octeto 4: " && echo "obase=2; $octeto4" | bc
