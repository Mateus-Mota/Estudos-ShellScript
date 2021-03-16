#!/bin/bash

echo "obase=16" | bc
echo "43^2 - (11^3 + 31/4)" | bc
echo "10+10" | bc

bc <<< "obase=16"
bc <<< "43^2 - (11^3 + 31/4)"
bc <<< "10+10"
