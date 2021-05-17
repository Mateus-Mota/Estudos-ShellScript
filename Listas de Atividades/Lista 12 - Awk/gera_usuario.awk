#!/bin/awk -f

/Thiago/ {print $1 substr($2,1,1) substr($3,1,1) substr($4,1,1)}
/Josias/ {print $1 substr($3,1,1) substr($4,1,1) substr($5,1,1) substr($6,1,1)}
/Victor/ {print $1 substr($2,1,1) substr($3,1,1) substr($5,1,1)}
/Manequias/ {print $1 substr($3,1,1) substr($4,1,1) substr($5,1,1)}
