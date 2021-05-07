# P.S. 2020.2 Lista 10 - Grep e RegEx

### *** Todas as soluções devem usar o comando grep com expressões regulares.

## 1 - Escreva um script que, baseado em argumentos de linha de comando:

### a - Liste apenas os diretórios de uma pasta
### b - Liste apenas os arquivos executáveis
### c - Liste apenas os scripts shell
### d - Liste apenas os links simbólicos
### e - Liste apenas arquivos com tamanho menor que 100 Bytes

### Resolução
~~~bash
#!/bin/bash

if [ "$1" == "a" ]; then
	ls -l | grep "^d" | cut -d ' ' -f 10
fi

if [ "$1" == "b" ]; then
	ls -l | grep "^[a-z].*\x" | cut -d ' ' -f 10
fi

if [ "$1" == "c" ]; then
	ls | grep ".sh"
fi

if [ "$1" == "d" ]; then
	ls -ls | grep "[-][>]" | cut -d ' ' -f 14 
fi

if [ "$1" == "e" ]; then
	ls | grep ""
fi
~~~

## 2 - Escreva um script que use o comando grep para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

### Resolução
~~~bash
~~~

## 3 - Escreva um script que valide as seguintes regras para criação de senha: pelo menos uma letra maiúscula, uma letra minúscula e um número. Validar significa receber uma senha e dizer se esta obedece ao padrão ou não.

### Resolução
~~~bash
~~~

## 4 - Escreva um script que valide um e-mail no formato username@dominio. Validar significa dizer se o número está no padrão ou não.

### Resolução
~~~bash
~~~
