# P.S. 2020.2 Lista 08 - Estruturas While e Case

## 1 - Escreva um script chamado help_test_2.sh. Este deve ter um laço, apresentando opções para o usuário. Se o usuário digitar sair, ele sai do script. Se digitar “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se digitar “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se digitar “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se digitar “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se digitar “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test. Se digitar "extended", o script deve imprimir uma ajuda sobre a notação estendida [[ ]].

### Resolução
~~~bash
#/bin/bash

while [ "${opcao}" != sair ]; do
	read -p "Digite a opção: " opcao

	if [ "${opcao}" == "logica" ]; then
		echo -e "## Help Logica ##\n# O comando test permite a utilização de operadores lógicos podem ser utilizados po meio de duas opções:\n# -a(AND)\n# -o(OR)"
	fi

	if [ "${opcao}" == "aritmetica" ];then
		echo -e "## Help Aritmetica ##\n# O comando test permite a verificação de operações arimeticas relativa a números inteiros\n# -gt para maior que\n# -ge para maior ou igual que\n# -lt para menor que\n# -lt para menor ou igual que\n# -eq para igual que\n# -ne para não igual a"
	fi

	if [ "${opcao}" == "strings" ]; then
		echo -e "## Help String ##\n# O comando test permite a verificaçõ de condições relativas a stings:\n# == significa strings iguais\n# != significa strings diferentes\n# -z significa teste se a string é vazia\n# -n significa teste se a string é não vazia "
	fi

	if [ "${opcao}" == "variaveis" ]; then
		echo -e "## Help Variaveis ##\n O comando teste permite a utilização de váriaveis de ambiente para as verificações"
	fi

	if [ "${opcao}" == "arquivos" ]; then
		echo -e "## Help Arquivos ##\n# -d significa testes se o arquivo existe e é um diretório\n# -e significa teste se o arquivo existe\n# -f significa teste se o arquivo existe e é um arquivo comum"
	fi

	if [ "${opcao}" == "extend" ]; then
		echo "extend"
	fi

done
~~~

## 2 - Escreva um script que exibe a data/hora atual na tela enquanto espera que um arquivo chamado chave.txt seja criado no diretório /tmp, verificando isso a cada 2 segundos. Quando o arquivo for criado, o script termina sua execução.

### Resolução
~~~bash
#/bin/bash

date
while [ ! -e chave.txt  ]; do
	echo "Espere 2 segundos"
	echo "..."
	sleep 1
	echo "..."
	sleep 1
	touch chave.txt
	echo "Arquivo chave.txt criado"
done
~~~

## 3 - Escreva um script que funcione como um explorador de arquivos. Exibe um menu. se o usuário digitar q, sai do script. Se digitar d, mostra os diretórios da pasta atual. Se digitar f, exibe os arquivos da pasta atual. Se digitar v <arq>, exibe o conteúdo do arquivo <arq>. Se digitar cd <dir>, muda para o diretório <dir>, se este existir.

### Resolução
~~~bash
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
~~~

## 4 - Considere o seguinte arquivo ips.txt:

### 8.8.8.8
### 8.8.4.4
### 200.148.191.197
### 168.196.40.154
### 45.225.123.54

## Use um laço while para executar 4 pings para cada ip. Liste os IPs que não foram possíveis acessar.

### Resolução
~~~bash
~~~
