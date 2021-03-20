# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

echo "Foram passados ${#} arguentos:"

for a in ${*}; do
    echo "${a}: $( echo ${a} | wc -c )"
done
```

# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

read -p "Informe o nome de um arquivo: " arq

if [ ! -f "${arq}" ]; then
    echo "Nome de arquivo inválido ou arquivo não existe."
    exit 1
fi

while read l; do
    if cat /etc/passwd | grep ${l} 2> /dev/null; then
        echo "Usuário ${l} existe no sistema"
    else
        echo "Usuário ${l} não existe no sistema"
    fi
done < ${arq}

```

# Exercício 03

(1) Escreva um script shell que receba vários números como argumentos de linha de comando e imprima a média entre eles.

(2)Melhore o script anterior para que aceite números com casas decimais.

(3) Melhore o script anterior para que imprima também o maior e o menor número passado.

(4) Melhore o script anterior para que os números sejam passados, um por linha, pelo arquivo num.txt.

(5)Escreva um script shell que crie 100 arquivos na pasta /tmp.

(6) Melhore o script anterior para que o conteúdo de cada arquivo seja diferente.

(7) Escreva um script shell que receba um nome de arquivo como argumeto crie uma cópia deste arquivo, adicionando o número da linha no começo de cada linha.

(8) Melhore o script anterior para que verifique se o arquivo passado existe.
