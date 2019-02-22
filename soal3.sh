#!/bin/bash

flag=1
while true
do
	if ! [[ -f password$flag.txt ]]; then
		head /dev/urandom | tr -dc 0-9 | head -c 1 >>password$flag.txt
		head /dev/urandom | tr -dc A-Za-z0-9 | head -c 11 >> password$flag.txt
		
		break
	fi
	flag=$((flag+1))
done
