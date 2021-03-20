# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

if (( "$#" != "1" )); then
    echo "*** Uso: ./${0} <nome_arquivo>"
    exit 1
fi

infile=${1}

if [ ! -f ${infile} ]; then
    echo "Arquivo ${infile} não existe. Saindo..."
    exit 1;
fi

nlines="$( cat ${infile} | wc -l)"

if (( ${nlines} > 100 )); then
    echo "Arquivo Muito grande"
elif (( ${nlines} < 10 )); then
    echo "Arquivo Muito pequeno"
else
    cat ${infile}
fi
```

# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

case "${1}" in
          start) /bin/daemon start ;;
           stop) /bin/daemon stop  ;;
         status) /bin/daemon status anacron ;;

        restart) /bin/daemon stop 
                 /bin/daemon start ;;

              *) echo $"Usage: $0 {start|stop|restart|condrestart|status}"
                 exit 1 ;;
esac

```

# Exercício 03

Escreva um script shell que peça para o usuário digitar 4 notas, elimine a menor, e calcule a média do aluno.

Melhore o script anterior para que verifique se o usuário informou alguma nota vazia (apenas deu enter). Neste caso, deve sair do programa.

Melhore o script anterior para que aceite 3 ou 4 notas como argumentos de linha de comando. Caso sejam passados 3, o programa deve apenas calcular a média. Caso sejam passados 4, o programa deve eliminar a menor nota e calcuar a média.

Escreva um script shell que verifique se o usuário que o executou é root. Caso positivo, deve exibir uma mensagem de erro e sair.

Escreva um script shell que receba um nome de arquivo como argumeto e exiba um menu com opções para: exibir as 10 primeiras linhas do arquivo, exibir as 10 últimas linhas do arquivo, ou exibir o úmero de lihas do arquivo.

Melhore o script anterior para que verifique se o arquivo passado existe.

