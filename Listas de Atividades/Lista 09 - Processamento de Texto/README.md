# P.S. 2020.2 Lista 09 - Processamento de Texto

## 1 - Escreva um script que receba o nome de um arquivo (a) e um número (x) como parâmetros de linha de comando. O script deve imprimir a linha número x do arquivo. Caso o arquivo possua menos que x linhas, o script deve imprimir a frase “Falha: o arquivo ‘a’ possui apenas n linhas”. Caso o arquivo não exista, o programa deve imprimir um erro.

### Resolução
~~~bash
#!/bin/bash

arquivo=$1
numero=$2
counter=0

if [ ! -f $arquivo ]; then
	echo "Arquivo não existe"
fi

if (( $(cat $arquivo | wc -l) < $numero )); then
	echo "O arquivo só possui $(cat $arquivo | wc -l) linhas"
fi

if (( $(cat $arquivo | wc -l) >= $numero )) ;then

	while read line; do
	
		counter=$(($counter + 1 ))
		if (( $counter == $numero )); then
			echo -e "$line"
		fi

	done < "$arquivo"

fi
~~~

## 2 - Escreva um script que use o comando tr para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

### Resolução
~~~bash
#!/bin/bash

read -p "Digite o nome do arquivo" arq
read -p "Digite o novo nome do arquivo" novo_arq

tr -s '\n' < $arq > $novo_arq
~~~

## 3 - Escreva um script que exiba um arquivo parte por parte (digamos 3 linhas em cada parte), esperando por um enter, até o fim do arquivo (parecido com o comando more).

### Resolução
~~~bash
~~~

## 4 - Escreva um script que leia um endereço IP, separe os 4 octetos, e imprima-os em formato binário. Ex.:

### Digite um endereço IP: 8.8.4.4

### Octeto #1: 8 em binário 00001000
### Octeto #2: 8 em binário 00001000
### Octeto #3: 4 em binário 00000100
### Octeto #4: 4 em binário 00000100

### Ps: Se não conseguir colocar os zeros a mais no início dos números binários não tem problema.

### Resolução
~~~bash
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
~~~
