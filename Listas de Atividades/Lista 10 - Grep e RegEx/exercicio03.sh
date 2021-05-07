#!/bin/bash

read -p "Senha: " senha && echo $senha | egrep --color '*[0-9]*[A-Z]*[a-z]*|*[0-9]*[a-z]*[A-Z]*|*[A-Z]*[a-a]*[0-9]*|*[a-z]*[A-Z]*[0-9]*' && echo "SIM" || echo "NÃO"
