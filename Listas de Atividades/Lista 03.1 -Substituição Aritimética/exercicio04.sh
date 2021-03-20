#!/bin/bash

wc -l $1 $2 $3 | tail -n1 | cut -d "t" -f 1 
