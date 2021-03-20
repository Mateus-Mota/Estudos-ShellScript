#!/bin/bash

(( $1 > $2 )) || echo $1
(( $2 > $1 )) || echo $2
