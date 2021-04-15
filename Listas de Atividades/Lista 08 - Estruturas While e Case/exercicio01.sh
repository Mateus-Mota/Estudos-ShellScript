#/bin/bash

while [ "${opcao}" != sair ]; do
	read -p "Digite a opção: " opcao

	if [ "${opcao}" == "logica" ]; then
		echo "logica"
	fi

	if [ "${opcao}" == "aritmetica" ];then
		echo "arimetica"
	fi

	if [ "${opcao}" == "strings" ]; then
		echo "String"
	fi

	if [ "${opcao}" == "variaveis" ]; then
		echo "Variaveis"
	fi

	if [ "${opcao}" == "arquivos" ]; then
		echo "arquivos"
	fi

	if [ "${opcao}" == "extend" ]; then
		echo "extend"
	fi

done
