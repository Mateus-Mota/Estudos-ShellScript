<h2>Exercício 01</h2>
<p>O que é impresso na tela após a execução do seguinte script?</p>

~~~Bash
#!/bin/bash

a=10
b=20
c=$a$b
d=$a$b$c
echo ${d}
~~~

<p>Explique a execução de cada linha do script.</p>

<h2>Exercício 02</h2>
<p>Escreva um script shell que leia 3 nomes e 3 telefones e imprima-os na tela.</p>

<p>Melhore o script para que imprima primeiro os 3 telefones e depois os 3 nomes.</p>

<h2>Exercício 03</h2>
<p>Considere o script teste.sh descrito abaixo.</p>

~~~Bash
#!/bin/bash
echo $*
echo $1
echo $5
echo $12
echo $13
~~~

<p>O que é impresso na tela após a execução do script teste.sh da seguinte forma:</br>
./teste.sh a1 a2 a3 a4 "a5 a5" a6 a7 a8 'a9 a9' a10 a11 a12 a13</p>
<p>Como corrigir o script para que os argumentos de linha de comando 12 e 13 sejam exibidos corretamente?</p>

<h2>Exercício 04</h2>
<p>Considere o script teste.sh descrito abaixo.</p>

~~~Bash
#!/bin/bash
a="Brasil"
aa="Brasileiro"
aaa="Brasileirissimo"
aaaa="Brasileirissimozinho"
~~~

~~~Bash
echo $a
echo $aa
echo $aaa
echo $aaaa
~~~

<p>O que é impresso na tela após a execução do script teste.sh?</p>

<p>Como fazer para que, usando as variáveis 'a' e 'aa', o script imprima 'BrasilBrasileiro' (sem espaços) na tela?</p>

<p>Como fazer para que, usando as variáveis 'a' e 'aa', o script imprima 'BrasilaBrasileiroa' (sem espaços) na tela?</p>
