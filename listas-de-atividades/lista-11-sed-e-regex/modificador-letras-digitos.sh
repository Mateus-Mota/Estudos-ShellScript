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
