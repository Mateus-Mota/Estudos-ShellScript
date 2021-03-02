#!/bin/bash

DATA=$(date +%Y-%m-%d)

mkdir /tmp/${DATA}
cp -r ./ /tmp/${DATA}
