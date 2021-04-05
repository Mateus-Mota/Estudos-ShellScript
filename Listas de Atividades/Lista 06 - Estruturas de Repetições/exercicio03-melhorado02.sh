#!/bin/bash

wc -l $1* > total_linhas.txt && cat total_linhas.txt | sort -gr
