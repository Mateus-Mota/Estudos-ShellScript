#!/bin/bash

cat downloads.txt | awk BEGIN{total=0}'/Nelson/''{total+=$3}END{print "Nelson Baixou" " " total;}'

cat downloads.txt | awk '/Arr445/''{print "Arr445 Baixou" " " $3}'

cat downloads.txt | awk '/Vianna/''{print "Vianna Baixou" " " $3}'
