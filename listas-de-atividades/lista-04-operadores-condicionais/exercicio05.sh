#!/bin/bash

lin=$(cat $1 2> /dev/null | wc -l)
find $1 2> /dev/null && (( $lin < 5 )) || echo "BAD"
