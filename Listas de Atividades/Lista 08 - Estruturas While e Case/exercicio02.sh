#/bin/bash

date
while [ ! -e chave.txt  ]; do
	echo "Espere 2 segundos"
	echo "..."
	sleep 1
	echo "..."
	sleep 1
	touch chave.txt
	echo "Arquivo chave.txt criado"
done
