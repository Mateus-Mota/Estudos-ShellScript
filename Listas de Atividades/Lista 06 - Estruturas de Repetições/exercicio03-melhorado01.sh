#!/bin/bash

wc -l * > total_linhas.txt && cat total_linhas.txt | sort -gr
