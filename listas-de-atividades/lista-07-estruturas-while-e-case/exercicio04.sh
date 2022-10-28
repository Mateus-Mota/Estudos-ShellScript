#/bin/bash

c=0
touch lista_ips.txt

while [ "${c}" != "4" ]; do
	ping -c 1 8.8.8.8
	if [ "$?" == "1" -a "$(grep -R "8.8.8.8" "lista_ips.txt" && echo $?)" != "$(echo -e "8.8.8.8\n0")" ]; then
			echo "8.8.8.8" >> lista_ips.txt
	fi
	
	ping -c 1 8.8.4.4	
	if [ "$?" == "1" -a "$(grep -R "8.8.4.4" "lista_ips.txt" && echo $?)" != "$(echo -e "8.8.4.4\n0")" ]; then
		echo "8.8.4.4" >> lista_ips.txt
	fi

	ping -c 1 200.148.191.197
	if [ "$?" == "1" -a "$(grep -R "200.148.191.197" "lista_ips.txt" && echo $?)" != "$(echo -e "200.148.191.197\n0")" ]; then
		echo "200.148.191.197" >> lista_ips.txt
	fi

	ping -c 1 168.196.40.154
	if [ "$?" == "1" -a "$(grep -R "168.196.40.154" "lista_ips.txt" && echo $?)" != "$(echo -e "168.196.40.154\n0")" ]; then
		echo "168.196.40.154" >> lista_ips.txt
	fi

	ping -c 1 45.225.123.54
	if [ "$?" == "1" -a "$(grep -R "168.196.40.154" "lista_ips.txt" && echo $?)" != "$(echo -e "168.196.40.154\n0")" ]; then
		echo "45.225.123.54" >> "lista_ips.txt"
	fi
	
	c=$(( ${c} + 1))
done

echo "### Lista de IPs Inacessíveis ###"
cat lista_ips.txt

rm lista_ips.txt
