#!/bin/bash

if [ "$1" == "a" ]; then
	ls -l | grep "^d" | cut -d ' ' -f 10
fi

if [ "$1" == "b" ]; then
	ls -l | grep "^...x..[-x]..[-x]" | cut -d ' ' -f 10
fi

if [ "$1" == "c" ]; then
	ls | grep ".sh"
fi

if [ "$1" == "d" ]; then
	ls -ls | grep "[-][>]" | cut -d ' ' -f 14 
fi

if [ "$1" == "e" ]; then
	ls | grep ""
fi
