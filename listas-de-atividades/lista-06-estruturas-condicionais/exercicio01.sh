#!/bin/bash

for i in $*; do
	if [ "$i" == "logica" ]; then
		echo -e "## Help Logica ##\n# O comando test permite a utilização de operadores lógicos podem ser utilizados po meio de duas opções:\n# -a(AND)\n# -o(OR) "
	fi

	if [ "$i" == "aritmetica" ]; then
		echo -e "## Help Aritmetica ##\n# O comando test permite a verificação de operações arimeticas relativa a números inteiros\n# -gt para maior que\n# -ge para maior ou igual que\n# -lt para menor que\n# -lt para menor ou igual que\n# -eq para igual que\n# -ne para não igual a"
	fi

	if [ "$i" == "string" ]; then
		echo -e "## Help String ##\n# O comando test permite a verificaçõ de condições relativas a stings:\n# == significa strings iguais\n# != significa strings diferentes\n# -z significa teste se a string é vazia\n# -n significa teste se a string é não vazia "
	fi
	
	if [ "$i" == "variaveis" ];then
		echo -e "## Help Variaveis ##\n O comando teste permite a utilização de váriaveis de ambiente para as verificações"
	fi

	if [ "$i" == "arquivos" ]; then
		echo -e "## Help Arquivos ##\n# -d significa testes se o arquivo existe e é um diretório\n# -e significa teste se o arquivo existe\n# -f significa teste se o arquivo existe e é um arquivo comum"
	fi

done
