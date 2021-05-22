#!//bin/bash

echo "***Substituição de variável***"
a=99
echo "Variável de usuário a: ${a}"
echo "Variável do sistema("'$PATH'"): ${PATH}"

echo "***Substituição de shell***"
echo "Os aquivos no diretórios são: '$(ls)'"
echo "Primeiro foi realizado o comando ls e seu conteúdo ficou armazenado dentro da resposta do comando echo."
