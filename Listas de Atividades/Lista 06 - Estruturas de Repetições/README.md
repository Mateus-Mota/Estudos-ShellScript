# P.S. 2020.2 Lista 06 - Estruturas de repetição: laços for

1 - Escreva um script que imprima todos os números pares de 1 até 101. Melhore o script para que imprima todos os números pares entre a e b, sendo a o primeiro parâmetro de linha de comando, enquanto que b é o segundo.

## Resolução Inicial.
~~~bash
#!/bin/bash

for (( i=0; i<=101; i++ )) do
	if (( ${i} % 2 == 0 && ${i} != 0 ));then
		echo  "${i}"
	fi
done
~~~

## Resolução Melhorada.
~~~bash
#!/bin/bash

for (( i=$1; i<=$2; i++ )) do
	if (( ${i} % 2 == 0 && ${i} != 0 ));then
		echo  "${i}"
	fi
done   
~~~

2 - Escreva um script que peça para o usuário digitar dois números, a e b, e calcule (e exiba na tela) a soma de todos os números de a até b.

## Resolução
~~~bash
#!/bin/bash

read -p "Valor A: " a
read -p "Valor B: " b
total=0
for (( i=$a; i<=$b; i++)) do
	total=$(( ${total} + ${i} ))
done
echo $total
~~~

3 - Escreva um script que exiba o nome e número de linhas de cada um dos arquivos do diretório atual. Melhore o script para que os arquivos sejam exibidos em ordem decrescente em relação ao número de linhas. Melhore ainda mais o script para que receba o nome do diretório (de onde serão listados os nomes dos arquivos) seja lido como parâmetro de linha de comando.

## Resolução Inicial
~~~bash
!/bin/bash
wc -l *
~~~

## Resolução Melhorada I
~~~bash
!/bin/bash

~~~

## Resolução Melhorada II
~~~bash
!/bin/bash

~~~

4 - Escreva um script que receba vários nomes de arquivo como parâmetros de linha de comando (o número de parâmetros pode variar de execução para execução) e imprima o nome de cada arquivo passado seguido de SIM, caso o arquivo exista, e de NAO caso contrário.

## Resolução
~~~bash
#!/bin/bash

for i in $*; do
	test -f $i $$ echo "SIM" || echo "NÃO"
	
done
~~~

5 - [EXTRA] Escreva um script que use a ferramenta md5 para verificar a existência de arquivos com o mesmo conteúdo no diretório atual. Caso existam, imprima FALHA. Caso contrário, imprima SUCESSO.
