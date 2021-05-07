#!/bin/bash

read -p "Senha: " senha && echo $senha | egrep --color '[A-Z]|[a-z][A-Z][0-9]' && echo "SIM" || echo "NÃO"
