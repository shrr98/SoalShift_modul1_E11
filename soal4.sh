#!/bin/bash

isi=$(cat "/var/log/syslog")
factor=$(date +%H)
filename=$(date +'%H:%M %2d-%2m-%Y')

lowcast=''
for hrf in {a..z}; do
	lowcast="$lowcast""$hrf"
done
lowcast="$lowcast""$lowcast"
upcast=$(echo "$lowcast" | tr '[a-z]' '[A-Z]') 

echo "$isi" | tr "${lowcast:0:26}" "${lowcast:${factor}:26}" | tr "${upcast:0:26}" "${upcast:${factor}:26}" > "$filename"
