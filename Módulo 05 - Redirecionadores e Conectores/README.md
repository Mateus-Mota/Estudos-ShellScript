# Exercício 01
O que é impresso na tela após a execução do seguinte script?

~~~bash
#!/bin/bash

a="$(pwd)"
b="$(ls ${a})"

echo $a
echo $b
~~~

# Exercício 02
Escreva um script shell que peça para o usuário digitar um dia, um mês e um ano e imprima o dia da semana correspondente.

Melhore o script para que receba dia, mês e ano como argumentos de linha de comando.

Melhore o script para que receba duas datas como argumentos de linha de comando: argumentos de 1 a 3 representam dia, mês e ano da data um, e os argumentos 4, 5 e 6 representam dia, mês e ano da data 2.
  
# Exercício 03

Escreva um script shell que peça para o usuário digitar o nome de três diretórios do sistema. Crie o arquivo lista.txt contendo todos os arquivos de cada diretório passado.

Melhore o script para que verifique se o diretório passado existe, exibindo uma mensagem de erro caso contrário.

Melhore o script para que sejam criados dois arquivos, um com a lista.txt e outro com a lista de diretórios passados que não existem.
