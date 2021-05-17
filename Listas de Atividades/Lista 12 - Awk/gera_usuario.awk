#!/bin/bash

cat funcionarios.txt | awk '{print $1 substr($2,1,1) substr($3,1,1) substr($4,1,1)}'
