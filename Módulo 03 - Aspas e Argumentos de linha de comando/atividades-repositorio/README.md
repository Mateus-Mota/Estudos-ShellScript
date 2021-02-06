<h2>Exercício 01</h2>
<p>O que é impresso na tela após a execução do seguinte script?</p>

#!/bin/bash

a=10
b=20

echo a
echo "a"
echo "$a"
echo '$a'

echo "o valor de $b é $b"
echo 'o valor de $b é $b'
echo "o valor de "'$b'" é $b"

<h2>Exercício 02</h2>
<p>Escreva um script shell que receba 10 argumentos de linha de comando e imprima-os na tela na ordem reversa.</p>

<p>Melhore o script para que imprima 2 argumentos por linha, separados por uma tabulação.</p>

<p>Melhore o script para que imprima, antes de cada argumento, o nome da variável correspondente no shell (com $).</p>

<h2>Exercício 03</h2>
<p>Considere o script teste.sh descrito abaixo.</p>

#!/bin/bash

a="$*"
b='$*'
c="$#"

echo '$a'
echo '$b'
echo '$c'

echo "$a"
echo "$b"
echo "$c"
</p>O que é impresso na tela após a execução do script teste.sh da seguinte forma:</br>
./teste.sh arg1 arg2 arg3 arg4</p>