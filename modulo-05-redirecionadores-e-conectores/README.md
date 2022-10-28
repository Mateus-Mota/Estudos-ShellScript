# Exercício 01

O que é impresso na tela após a execução do seguinte script?

```bash
#!/bin/bash

a="$(pwd)"

echo $a > teste
echo $a >> teste

cat teste
```

# Exercício 02

O que é impresso na tela após a execução do seguinte script?

```bash
#!/bin/bash

cat $1 | grep $2 &> /dev/null && echo "OK"
cat $1 | grep $2 &> /dev/null || echo "Not OK"

exit 0
```
  
# Exercício 03

Escreva um script shell que peça para o usuário digitar o nome de três diretórios do sistema. Crie o arquivo lista.txt contendo todos os arquivos de cada diretório passado.

Melhore o script para que verifique se o diretório passado existe, exibindo uma mensagem de erro caso contrário.

Melhore o script para que sejam criados dois arquivos, um com a lista.txt e outro com a lista de diretórios passados que não existem.
