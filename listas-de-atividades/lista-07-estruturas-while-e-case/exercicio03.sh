#/bin/bash

echo -e "# MENU DE OPÇÕES #\n# d) Para listar os diretórios no diretório atual\n# f) Para listar os arquivos do diretório atual\n# v) Para exibir o conteúdo de um arquivo\n# cd) Para entrar no diretório escolhido caso ele exista\n# q) Para Sair"
read -p "Digite uma das opções acima: " opcao

while [ "$opcao" != "q" ]; do
	if [ "$opcao" == "d" ];then
		for arq in $(ls); do
			if [ -d $dir ]; then
		       		echo $arq
			fi
		done
		opcao="q"
	fi


	if [ "$opcao" ==  "f" ]; then
		for arq in $(ls); do
			if [ -f $arq ]; then
				echo $arq
			fi
		done
		opcao="q"
	fi


	if [ "$opcao" == "v" ]; then
		read -p "Digite o nome do arquivo: " arq
		if [ -f $arq ]; then
			cat $arq
		fi
		opcao="q"
	fi


	if [ "$opcao" == "cd" ]; then
		read -p "Digite o nome do diretório: " dir
		if [ -d $dir ]; then
			cd $dir
		fi
		opcao="q"
	fi

done
