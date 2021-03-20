# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

a=2
b=4
c=$(( a + b ))

(( a + b + c > 10 )) && echo "OK"
(( a % 2 == 0 )) && (( b % 2 == 0 )) && echo "OK"
(( 2 ** 3 > 4 ** 2 )) && echo "OK"

test -f ${a} && echo "OK"
test ${a} -ge ${b} && echo "OK"
test -z "${d}" && echo "OK"

[ -d ${0} ] && echo "OK"
[ -e ${0} ] && echo "OK"
[ -f ${0} ] && echo "OK"
```

# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

echo -e "Os preços podem ter casas decimais, Ex.: 10.25\n"

read -p "Digite o preco do item 1: " p1
read -p "Digite o preco do item 2: " p2
read -p "Digite o preco do item 3: " p3
read -p "Digite o preco do item 4: " p4

total=$( bc <<< "scale=2; ${p1} + ${p2} + ${p3} + ${p4}" )

(( $( bc <<< "${total} >= 200.0" ) == "1" )) && total=$( echo "scale=2; ${total} * 0.85" | bc)

echo "Você deve pagar $total Reais"

```

# Exercício 03

(1) Escreva um script shell que peça para o usuário digitar um número e verifique se este é maior que 0 e menor que 10.

(2) Melhore o script anterior para que aceite que o usuário entre com números reais. Ex.: 22.5 ou 8.77.

(3) Escreva um script shell que peça para o usuário digitar a média obtida no semestre e verifique se o aluno passou, ficou na final ou foi reprovado.

(4)Escreva um script shell que receba como argumentos de linha de comando o preço do litro da gasolina e do álcool, e imprima se é melhor abastecer com gasolina ou com álcool.

(5) Melhore o script da questão anterior para que receba 4 argumentos: caso um argumento seja -a o argumento seguinte é o preço do álcool. Caso seja -g, o argumento seguinte é o preço da gasolina.

(6) Escreva um script que receba 4 nomes de arquivos como parâmetros de linha de comando e imprima na tela o nome do arquivo que possui mais linhas.

(7) Melhore o script anterior para que verifique se cada arquivo passado existe e não é um diretório.

(8) Melhore o script anterior para que exiba "ERRO 921" caso o argumento passado não exista e "ERRO 7818" caso o argumento passado seja um diretório.
