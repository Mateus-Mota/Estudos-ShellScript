# Lista de Exercícios - AWK

## 1. Considere a saída do comando ls –l. Deseja-se imprimir apenas o nome do arquivo, seguido do nome do usuário dono e do grupo dono.

~~~bash
$ ls -l
-rw-r--r--1   root root    2981 dez  3 07:59 adduser.conf
-rw-r--r--1   root root      44 dez  3 08:05 adjtime
drwxr-xr-x  2 root root    4096 dez 26 06:15 alternatives
drwxr-xr-x  8 root root    4096 dez 10 05:56 apache2
drwxr-xr-x  3 root root    4096 dez  3 08:04 apm
drwxr-xr-x  3 root root    4096 dez 10 06:12 apparmor.
ddrwxr-xr-x 6 root root    4096 dez 26 06:14 apt
-rw-r--r--1   root root    1863 mai 15  2017 bash.bashrc
-rw-r--r--1   root root      45 mar 22  2014 bash_completion
~~~

### Resolução
~~~bash
~~~

## 2. Considere o seguinte arquivo de entrada com a lista dos dez nomes mais comuns no Brasil para Meninos e Meninas. Pede-se que o arquivo seja separado em dois, um apenas para meninos e outro para meninas.

Ranking | Meninos | Ranking     | Meninas 
--------|---------|-------------|-----------
1       | Miguel  |     1       | Sophia
2       | Davi    |     2       | Alice 
3       | Arthur  |     3       | Julia 
4       | Pedro   |     4       | Isabella
5       | Gabriel |     5       | Manuela
6       | Bernardo|     6       | Laura
8       | Matheus |     8       | Valentina
9       | Rafael  |     9       | Giovanna
10      | Heitor  |     10      | Maria Eduarda

### Resolução
~~~bash
~~~

## 3.Considere  a  saída  do  comando  history.Deseja-se  fazer  uma  lista  de  todos  os  comandos  que foram executados. Nenhum comando deve aparecer mais de uma vez na lista.

~~~bash
546  source /home/gov/venv-tasks/bin/activate
547  cd django/
548  ls
549  cd tasks_project/
550  ls
551  ./manage.py runserver 0:8888552  ls
553  cd /etc
554  ls555  ls -l
556  ls -l | head
557  history
558  history | head
559  history
~~~

### Resolução
~~~bash
~~~

## 4.Dado  um  arquivo  com  todos  os  downloads efetuados  pelos  usuários  no  último  mês,  deseja-se totalizar quanto cada usuário baixou. Segue o formato do arquivo

~~~bash
Nelson www.google.com.br 250
Arr445 www.testes.com/dbz.wmv 20050
Nelson www.uol.com.br 300
Vianna debian.org/9.7.0.iso 800555
~~~

### Resolução
~~~bash
~~~

## 5.Considere uma lista de todos os IPs que acessaram uma determinada máquina via ssh.Pede-se que  seja  efetuada  uma  contagem  de  quantos  IPs  distintos  eram  internos  (não  roteáveis)  e quantos eram roteáveis.Lembre-se:

~~~bash
10.0.0.0/8 Rede Privada RFC 1918
172.16.0.0/12 Rede privada RFC 1918
192.168.0.0/16 Rede Privada RFC 1918
~~~

### Resolução
~~~bash
~~~

## 6. Dado um arquivo com nomes e notas de alunos,  imprima a lista de alunos aprovados, i.e. com média maior ou igual a 70. Segue o formato do arquivo:

~~~bash
Nelson Antunes de Coimbra 100 100 100
José Edyson 50 100 50
Joao das Neves Pereira Pádua e Talz 100 0 100
Amanda Selfie 100 70 70
~~~

### Resolução
~~~bash
~~~

## 7. Altere o script da questão anterior para que não imprima a lista de aprovados, mas um resumo com o número de aprovados e o número de reprovados

### Resolução
~~~bash
~~~

## 8. Melhore o script da questão anterior para que além do número de aprovados e reprovados, seja exibido  um  histograma  das  médias,  isto  é,  o  número  de  médias  entre  0  e  9.9999,  o  número  de médias entre 10 e 1.9999, ...., o número de médias entre 8 e 9.99999 e onúmero de médias entre 9 e 10

### Resolução
~~~bash
~~~

## 9. Escreva  um  script  que,  dado  um  relatório,  escrito  em  um  formato  qualquer,  filtre-o  exibindo todos os números de CPF encontrados, e apenas isso.Segue exemplo de arquiv

~~~bash
ANA  RODRIGUES  RODRIGUES  RODRIGUES  459.220.398-07  ODONTOLOGIA 
MATUTINO  100%  BRENDO  DE  BRENDO  VAZE  VOLTAZ121.510.018-82 
CIÊNCIAS CONTÁBEIS NOTURNO 50%

CAMILLIA CARLA PEREZ

FERREIRA 108.777.666-80 NUTRIÇÃO NOTURNO 100%

CEROLLYNA  DE  OLIVEIRA SILVIA 452.862.328-83  EDUCAÇÃO  FÍSICA 
NOTURNO  50% HELLYSIA  MARIA  MARIA DO  BAIRRO 445.445.868-60 
GASTRONOMIA EAD 100% HYELEN DA SILVA DA SILVA 123.123.026-40 
MEDICINA VETERINÁRIA MATUTINO 100% 417.842.842-10
~~~

### Resolução
~~~bash
~~~

## 10. Uma empresa possui uma política de  criação de  nomes de usuários: dado o nome completo da pessoa,  usar  o  primeiro  nome  seguido  pela  primeira  letra  de  cada  sobrenome  (ou  conectivo  da dos  de).  Exemplo:  Thiago  Gouveia  da  Silva  ganha  o  nome  de  usuário  ThiagoGdS,  enquanto Josias  de  Pádua  Maranhão  Ayres  Junior,  ganha  o  nome  de  usuário  JosiasdPMAJ.  Foi  enviada uma lista contendo os dados dos funcionários da empresa para que você criasse os usuários. Sua tarefa é, dado a entrada, criar uma lista com os nomes de usuários que devem ser criados. Segue o Formato da lista:

~~~bash
Thiago Gouveia da Silva
34 Anos
Professor
João Pessoa

Josias de Pádua Maranhão Ayres 
Júnior
26 Anos
Pedreiro
Campina Grande

Victor Hugo de la France
79 Anos
Escritor
França

Manequias dos Arais de Fortal
45 Anos
Padeiro e Confeiteiro, mas também faz tudo
Belo Jardim, mas também Arraial do Cabo
~~~

### Resolução
~~~bash
~~~
