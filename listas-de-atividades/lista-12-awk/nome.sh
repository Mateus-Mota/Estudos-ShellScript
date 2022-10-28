#!/bin/bash

cat nomes.txt | awk '{print$1 " " $2}' > meninos.txt

cat nomes.txt | awk '{print$3 " " $4}' > meninas.txt

cat meninos.txt

echo " "

cat meninas.txt
