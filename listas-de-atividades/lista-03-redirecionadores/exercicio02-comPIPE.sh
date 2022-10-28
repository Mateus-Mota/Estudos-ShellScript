#!/bin/bash

$(find . -type f -name "a.txt") | bc -q
