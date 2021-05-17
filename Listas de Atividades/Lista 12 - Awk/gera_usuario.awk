#!/bin/awk -f

/Thiago/ {print $1 substr($2,1,1) substr($3,1,1) substr($4,1,1)}
