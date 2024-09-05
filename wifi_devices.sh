#!/bin/bash
getip() {

        ip address | grep 255 | cut -d '.' -f 3 
}
for ((i = 2 ; i < 255 ; i++)); do
	ping -c 1 -s 0 -q 192.168.$(getip).$i &>/dev/null
	if [ $? -eq 0 ]; then
	echo "192.168.$(getip).$i"
	fi
done

