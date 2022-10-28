# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

a=2
b=4
c=$(( a + b ))


echo $(( a + b + c ))
echo $(( a + b * c ))
echo $(( (a + b) * c ))
echo $(( a ** b ))
echo $(( (a ** b) / c ))
echo $(( (a ** b) % c ))

```

# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

x=10

echo "10 / 3" | bc
echo "${x} / 3" | bc
echo "scale=2; 10 / 3" | bc
echo "scale=2; ${x} / 3" | bc
echo "obase=16; scale=0; 10 * 2" | bc
bc <<<"obase=16; scale=0; 10 * 2"

exit 0
```

# Exercício 03

Escreva um script shell que peça para o usuário digitar um número e imprima-o em hexadecimal.

Escreva um script shell que peça para o usuário digitar o nome de dois arquivos, e imprima a diferença entre o número de linhas destes.

Escreva um script shell que peça para o usuário digitar a média obtida no semestre (abaixo de 70 e acima de 40) e imprima qual a nota este usuário precisa tirar na final para passar.

Escreva um script shell receba como argumento de linha de comando 3 números, e imprima a porcentagem que cada um destes representa da soma dos 3.
