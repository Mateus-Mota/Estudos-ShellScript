#!/bin/bash
arq1=$(cat ${1} | wc -l)
arq2=$(cat ${2} | wc -l)
arq3=$(cat ${3} | wc -l)
if [ $arq1 -gt $arq2 -a $arq1 -gt $arq3 ];then 
       	echo $arq1
elif [ $arq2 -gt $arq1 -a $arq2 -gt $arq3 ];then
	echo $arq2
elif [ $arq3 -gt $arq1 -a $arq3 -gt $arq2 ];then
	echo $arq3
fi
