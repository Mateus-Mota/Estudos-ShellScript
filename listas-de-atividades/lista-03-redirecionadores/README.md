<h1>P.S. 2020.2 Lista 04 - Redirecionadores</h1>

<p> 1 - Escreva um script chamado help_red.sh que exibe uma ajuda sobre redirecionadores. Para cada redirecionador estudado ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ) o script deve imprimir o redirecionador, uma explicação sobre o seu funcionamento e um exemplo útil de uso.<p>

<p> 2 - Considere o seguinte arquivo a.txt:<br>
  
~~~bash
obase=16
(11^3 + 31/4) + 13*3
10+10
1+2+3+4+5+6+7+8
~~~

Este arquivo pode ser usado como entrada pelo aplicativo bc, que resolverá essas operações e exibirá na tela os resultados. Escreva um script que use o programa bc e redirecionadores de entrada para resolver estas contas. Faça uma versão usando pipe e outra sem usar pipe.<p>

<p> 3 - Escreva um script que receba 3 nomes de arquivos passados como argumentos de linha de comando. Use o comando ls usando estes três arquivos como argumentos. Redirecione todos os erros para o arquivo erro.log e todas as saídas corretas para o arquivo log.log. Por exemplo:

~~~bash
$ ./3.sh a.txt b.txt c.txt
~~~

<p> 4 - [¡CUIDADO!] Escreva um script que remova todos os arquivos e diretórios do diretório atual de trabalho sem exibir nenhuma mensagem na tela (nem mesmo mensagens de erro).</p>
