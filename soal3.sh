#!/bin/bash

pw=''

randompw(){
	pw="$(head /dev/urandom | tr -dc 0-9 | head -c 1)"
        pw="$pw""$(head /dev/urandom | tr -dc A-Z | head -c 1)"
        pw="$pw""$(head /dev/urandom | tr -dc a-z | head -c 1)"
        pw="$pw""$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 9)"
	pw="$(echo "$pw" | fold -w1 | sort -R | tr -d '\n')"
	
}


flag=1
while true
do
	if ! [[ -f password$flag.txt ]]; then
		while true; do
			randompw
			if [[ "$(awk -v pw="$pw" 'pw==$0{print $0}' password*.txt)" -eq "" ]]; then
				echo "$pw" > password$flag.txt
				break
			fi
		done
		break
	fi
	flag=$((flag+1))
done
