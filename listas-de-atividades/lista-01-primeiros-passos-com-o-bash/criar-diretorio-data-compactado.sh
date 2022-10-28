#!/bin/bash

DATA=$(date +%Y-%m-%d)

mkdir /tmp/${DATA}
cp -r ./ /tmp/${DATA}

tar -cfz ${DATA}.tar.gz /tmp/${DATA}
rm -Rf /tmp/${DATA}
