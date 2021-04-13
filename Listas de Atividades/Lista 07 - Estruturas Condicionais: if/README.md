# P.S. 2020.2 Lista 07 - Estruturas condicionais: if

## 1 - Escreva um script chamado help_test.sh. Este deve receber um ou mais parâmetros de linha de comando. Se um destes parâmetros for “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se um destes parâmetros for “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se um destes parâmetros for “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se um destes parâmetros for “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se um destes parâmetros for “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.

### Resolução
~~~bash
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
~~~

## 2 - Se você cria uma variável no shell atual e usa o comando export, esta variável fica disponível em qualquer script chamado a partir do shell atual. Ex.:

~~~bash
x=10
export x
./teste.sh
~~~

Se executar “echo $x” dentro do script teste.sh, este imprimirá 10. Sem o export, a variável “x” não existiria. Escreva um script que teste se as variáveis x, y e z existem (e têm valor diferente de vazio). Peça para o usuário digitar um valor para cada uma que não existir. Exiba o valor da soma x+y+z na tela.

### Resolução
~~~bash
#!/bin/bash

if [ -z "${x}" ]; then
	read -p "Digite o valor de x: " x
	export x
fi

if [ -z "${y}" ]; then
	read -p "Digite o valor de y: " y
	export y
fi

if [ -z "${z}"]; then
	read -p "Digite o valor de z: " z
	export z
fi

echo "$(( ${x} + ${y} + ${z} ))"
~~~

## 3 - Escreva um script que imprima a palavra DIRS e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra FILES e abaixo liste todos os arquivos da pasta atual. Por fim, imprima a palavra LINKS e abaixo liste todos os links simbólicos da pasta atual.

### Resolução
~~~bash
#!/bin/bash

echo  "## DIRS ##"

for arq in $(ls); do
	if [ -d "$arq" ]; then
		echo $arq
	fi
done

echo "## FILES ##"
for arq in $(ls); do
	if [ -e "$arq" ]; then
		echo $arq
	fi
done

echo "## LINKS ##"
for arq in $(ls); do
	if [ -h "$arq" ]; then
		echo $arq
	fi
done
~~~

## 4 - [CUIDADO!] Escreva um script que remova todos os arquivos que possuem permissão para execução no diretório atual (e nenhum outro.

### Resolução
~~~bash
~~~
