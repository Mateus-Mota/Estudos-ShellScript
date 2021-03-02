#!/bin/bash

DATA=$(date +%d-%m-%Y)

mkdir /tmp/${DATA}
cp -r ./ /tmp/${DATA}
