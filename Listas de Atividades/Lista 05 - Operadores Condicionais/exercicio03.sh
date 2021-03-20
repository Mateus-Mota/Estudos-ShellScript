#!/bin/bash
arq1=$(cat ${1} | wc -l)
arq2=$(cat ${2} | wc -l)
if [ $arq1 -gt $arq2 ];then 
       	echo $2
elif [ $arq2 -gt $arq1 ];then
	echo $1
fi
