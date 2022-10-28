#!/bin/bash

echo " ALUNOS APROVADOS: "

cat notas.txt | awk BEGIN{total=0}'/Nelson/''{total+=$5+$6+$7;}END{if (total/3 >= 70) print "Nelson Antunes de Coimbra";}'

cat notas.txt | awk BEGIN{total=0}'/José/''{total+=$3+$4+$5;}END{if (total/3 >= 70) print "José Edyson";}'
