## Exercício 01 - O que é impresso na tela após a execução do seguinte script?

~~~bash
#!/bin/bash

a=10
b=20
c=$a$b
d=$a$b$c
echo ${d}
~~~

### Explique a execução de cada linha do script

##Exercício 02 - Escreva um script shell que leia 3 nomes e 3 telefones e imprima-os na tela.

### Resolução Inicial
~~~bash
#!/bin/bash

read -p "Nome-1: " nome1
read -p "Nome-2: " nome2
read -p "Nome-3: " nome3

read -p "Fone-1: " fone1
read -p "Fone-2: " fone2
read -p "Fone-3: " fone3

echo "Nomes: 1 =${nome1}, 2 =${nome2}, 3 =${nome3}"
echo "Fones: 1 =${fone1}, 2 =${fone2}, 3 =${fone3}"
~~~

### Melhore o script para que imprima primeiro os 3 telefones e depois os 3 nomes.

### Resolução Melhorada
~~~bash
#!/bin/bash

read -p "Nome-1 = " nome1
read -p "Nome-2 = " nome2
read -p "Nome-3 = " nome3

read -p "Fone-1 = " fone1
read -p "Fone-2 = " fone2
read -p "Fone-3 = " fone3

echo "Fone-1 = ${fone1}, Fone-2 = ${fone2}, Fone-3 = ${fone3}"
echo "Nome-1 = ${nome1}, Nome-2 = ${nome2}, Nome-3 = ${nome3}"
~~~

## Exercício 03 - Considere o script teste.sh descrito abaixo.

~~~bash
#!/bin/bash
echo $*
echo $1
echo $5
echo $12
echo $13
~~~

### O que é impresso na tela após a execução do script teste.sh da seguinte forma:
### ./teste.sh a1 a2 a3 a4 "a5 a5" a6 a7 a8 'a9 a9' a10 a11 a12 a13</p>
### Como corrigir o script para que os argumentos de linha de comando 12 e 13 sejam exibidos corretamente?

## Exercício 04 - Considere o script teste.sh descrito abaixo.

~~~bash
#!/bin/bash
a="Brasil"
aa="Brasileiro"
aaa="Brasileirissimo"
aaaa="Brasileirissimozinho"
~~~

~~~bash
echo $a
echo $aa
echo $aaa
echo $aaaa
~~~

## O que é impresso na tela após a execução do script teste.sh?

## Como fazer para que, usando as variáveis 'a' e 'aa', o script imprima 'BrasilBrasileiro' (sem espaços) na tela?

## Como fazer para que, usando as variáveis 'a' e 'aa', o script imprima 'BrasilaBrasileiroa' (sem espaços) na tela?
