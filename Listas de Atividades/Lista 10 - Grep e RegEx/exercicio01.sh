#!/bin/bash

if [ "$1" == "a" ]; then
	ls -l | egrep "^d" | cut -d ' ' -f 10
fi

if [ "$1" == "b" ]; then
	ls -l | egrep "^...x..[-x]..[-x]" | cut -d ' ' -f 10
fi

if [ "$1" == "c" ]; then
	ls | egrep ".sh"
fi

if [ "$1" == "d" ]; then
	ls -ls | egrep "[-][>]" | cut -d ' ' -f 14 
fi

if [ "$1" == "e" ]; then
	ls | egrep ""
fi
