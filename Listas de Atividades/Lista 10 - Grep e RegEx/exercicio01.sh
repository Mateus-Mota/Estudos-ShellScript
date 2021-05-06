#!/bin/bash

if [ "$1" == "a" ]; then
	ls -l | grep "^d" | cut -d ' ' -f 10
fi

if [ "$1" == "b" ]; then
	ls -l | grep "^" | cut -d ' ' -f 1 
fi

if [ "$1" == "c" ]; then
	ls | grep ".sh"
fi

if [ "$1" == "d" ]; then
	ls | grep --color ""
fi

if [ "$1" == "e" ]; then
	ls | grep --color ""
fi
