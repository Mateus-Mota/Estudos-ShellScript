#/bin/bash

c=0
while [ "${c}" != "4" ]; do
	ping -c 1 8.8.8.8
	pign -c 1 8.8.4.4
	ping -c 1 200.148.191.197
	ping -c 1 168.196.40.154
	ping -c 1 45.225.123.54
	c=$(( ${c} + 1))
done
