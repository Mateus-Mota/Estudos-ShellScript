#!/bin/bash
arq1=$(cat ${1} | wc -l)
arq2=$(cat ${2} | wc -l)
(( $arq1 > $arq2 )) && echo $2
(( $arq2 > $arq1 )) && echo $1
