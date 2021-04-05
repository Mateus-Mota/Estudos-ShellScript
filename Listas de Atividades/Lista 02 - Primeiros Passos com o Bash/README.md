
# P.S. 2020.2 Lista 02 - Primeiros passos com Bash

## 1° - Escreva um script que imprima uma frase motivacional.
  
## 2° - Escreva um script que pergunte ao usuário o caminho de 3 diretórios e liste todos os arquivos destes 3 diretórios.

~~~bash
#!/bin/bash

read -p "Diretório 1: " dir1
read -p "Diretório 2: " dir2
read -p "Diretório 3: " dir3

ls ${dir1}
ls ${dir2}
ls ${dir3}
~~~

## 3° - Escreva um script que: crie um diretório /tmp/DATA onde DATA deve ser a data atual do sistema obtida a partir do comando date (no formato ano-mes-dia) e copie todos os arquivos do diretório atual para este novo diretório.
### Ex.: /tmp/2021-02-24 

~~~bash
#!/bin/bash

DATA=$(date +%Y-%m-%d)

mkdir /tmp/${DATA}
cp -r ./ /tmp/${DATA}
~~~

## 4° - Melhore o script anterior para que este compacte o novo diretório criado, removendo este diretório após a sua compactação. (o arquivo compactado deve ser copiado para o diretório inicial, o diretório atual, no caso).

~~~bash
#!/bin/bash

DATA=$(date +%Y-%m-%d)

mkdir /tmp/${DATA}
cp -r ./ /tmp/${DATA}

tar -cfz ${DATA}.tar.gz /tmp/${DATA}
rm -Rf /tmp/${DATA}
~~~

## 5° - Escreva um script que imprime na tela os conceitos de substituição de variáveis e de substituição de shell, com exemplos.
~~~bash
~~~
