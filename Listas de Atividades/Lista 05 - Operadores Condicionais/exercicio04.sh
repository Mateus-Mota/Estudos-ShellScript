#!/bin/bash

dir1=$(ls ${1} | wc -l)
dir2=$(ls ${2} | wc -l)
(( $dir1 > $dir2 )) && ls $1
(( $dir2 > $dir1 )) && ls $2
