<h1>Exercício 01</h1>
<p>Estender o hello world #2 para, após dizer prazer em te conhecer, dizer qual a data de hoje e qual o dia da semana.</p>

Resolução
~~~bash
#!/bin/bash

echo "Hello, World!"

read -p "Qual seu nome?" nome

echo "Ṕrazer em te conhecer, ${nome}!"
date +%D' '%A
~~~
