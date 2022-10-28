# P.S. 2020.2 Lista 03 - Substituição Aritmética

## 1 - Escreva um script que peça para o usuário digitar um número inteiro. Armazene este número da variável x. Faça a variável x receber o valor x + 21. Imprima na tela o valor de x.

### Resolução
~~~bash
#!/bin/bash

read -p "Valor: " valor

novovalor=$((${valor}+21))
echo ${novovalor}
~~~

## 2 - Escreva um script que soma 3 números passados como argumentos de linha de comando. Por exemplo:

### $ ./a.sh 10 20 30
### > 60

### Resolução
~~~bash
#!/bin/bash

echo "$(($1 + $2 + $3))"
~~~

## 3 - Escreva um script que receba dois argumentos passados pela linha de comando, digamos a e b, e imprima o valor da expressão (a+10)b - 5. Por exemplo:

### $ ./b.sh 0 2
### >95

### Resolução
~~~bash
#!/bin/bash

echo "$(( ( ($1 + 10) * $2 ) - 5 ))"
~~~

## 4 - Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando e imprime a soma dos números de linhas dos 3 arquivos. Utilize a substituição de shell e o comando wc -l para contar o número de linhas de cada arquivo. Por exemplo: 

### $ ./c.sh a.txt b.txt c.txt
### > 13

### Supondo que os arquivos a.txt, b.txt e c.txt possuam o seguinte conteúdo:

#### #a.txt:
#### 1
#### 2
#### 3

#### #b.txt:
#### 0
#### 0
#### 0
#### 0
#### 0
#### 0

#### #c.txt:
#### a
#### b
#### c
#### d

### Resolução
~~~bash
#!/bin/bash

wc -l $1 $2 $3 | tail -n1 | cut -d "t" -f 1 
~~~
