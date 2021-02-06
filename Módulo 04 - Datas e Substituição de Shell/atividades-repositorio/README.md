<h2>Exercício 01</h2>
<p>O que é impresso na tela após a execução do seguinte script?</p>

#!/bin/bash

a="$(pwd)"
b="$(ls ${a})"

echo $a
echo $b

<h2>Exercício 02</h2>
<p>Escreva um script shell que peça para o usuário digitar um dia, um mês e um ano e imprima o dia da semana correspondente.</p>

<p>Melhore o script para que receba dia, mês e ano como argumentos de linha de comando.<p>

<p>Melhore o script para que receba duas datas como argumentos de linha de comando: argumentos de 1 a 3 representam dia, mês e ano da data um, e os argumentos 4, 5 e 6 representam dia, mês e ano da data 2.</p>

<h2>Exercício 03</h2>
<p>Considere o script teste.sh descrito abaixo.<p>

#!/bin/bash

touch $1.$(date +%s)
touch ${1}.zip

timestamp=$(date +%s)
touch $2.${timestamp}
touch ${2}.${timestamp}.zip

touch $3
touch ${3}.zip

touch ${timestamp}
ls -la >> timestamp

rm -rf $1 $2 $3 &> /dev/null
<p>Explique a execução (linha por linha) do script teste.sh. Este foi executado da seguinte forma:<br>

./teste.sh arg1 arg2 arg3</p>