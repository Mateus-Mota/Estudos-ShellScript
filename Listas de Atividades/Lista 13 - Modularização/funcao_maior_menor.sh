#!/bin/bash

verificar-maior() {
	(( $1 >= $2 )) && echo $1 || echo $2
}
verificar-maior $1 $2

verificar-menor() {
	(( $1 <= $2 )) && echo $1 || echo $2
}
verificar-menor $1 $2
