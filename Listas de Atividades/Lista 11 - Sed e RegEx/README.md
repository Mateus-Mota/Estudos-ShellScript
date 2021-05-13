# P.S. 2020.2 Lista 11 - Sed

## *** Todas as soluções devem usar o comando sed com expressões regulares.

## 1 - Escreva um script que use o comando sed para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

### Resolução
~~~bash
#!/bin/bash

sed '/^[[:space:]]*$/d' $1
~~~

## 2 - Escreva um script que, baseado em opções de linha de comando:
### a - Remova todas as letras de um arquivo.
### b - Remova todos os dígitos de um arquivo.
### c - Substitua todos os caracteres que não são letras nem dígitos de um arquivo por <?>.

### Resolução
~~~bash
#!/bin/bash
echo -e "Digite uma das opções\n a - Remova todas as letras de um arquivo\n b - Remova todos os dígitos de um arquivo\n c - SUbstitua todos os caracteres que não nem caracteres nem dígitos por <?>"
read -p "Opcão: " opcao

if [ "$opcao" == "a" ]; then
	sed 's/[[:alpha:]]\+//g' $1 
fi

if [ "$opcao" == "b" ]; then
	sed 's/[[:digit:]]\+//g' $1
fi

if [ "$opcao" == "c" ]; then
	sed '!s/[[:alnum:]]/<?>/g' $1
fi
~~~

## 3 - Escreva um script que remova todos os números de CPF de um arquivo de entrada, alterando o seu valor para **CENSURADO**.

### Resolução
~~~bash
#!/bin/bash

sed 's/[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]/CENSURADO/' $1
~~~

## 4 - Escreva um script que, dado uma lista de números de telefone no formato xxxxxxxxxxx, coloque cada telefone no formato (xx) x xxxx-xxxx. Exemplo:

~~~bash
Para o seguinte arquivo:

	12345678900
	11111111111
	83987654321

A saída deve ser:

	(12) 3 4567-8900
	(11) 1 1111-1111
	(83) 9 8765-4321
~~~

### Resolução
~~~bash
~~~
