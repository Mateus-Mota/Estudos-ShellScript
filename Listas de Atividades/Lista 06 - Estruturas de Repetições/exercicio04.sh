#!/bin/bash

for i in $*; do
	test -f $i $$ echo "SIM" || echo "NÃO"
	
done
