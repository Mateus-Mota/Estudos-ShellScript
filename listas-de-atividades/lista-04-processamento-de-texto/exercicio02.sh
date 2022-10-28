#!/bin/bash

read -p "Digite o nome do arquivo" arq
read -p "Digite o novo nome do arquivo" novo_arq

tr -s '\n' < $arq > $novo_arq
