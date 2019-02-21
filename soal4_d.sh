#!/bin/bash

filename="$1"
isi=$(cat "$filename")
factor=$(echo "$filename" | awk -F: '{print $1}')

lowcast=''
for hrf in {a..z}; do
        lowcast="$lowcast""$hrf"
done
lowcast="$lowcast""$lowcast"
upcast=$(echo "$lowcast" | tr '[a-z]' '[A-Z]') 

echo "$isi" | tr "${lowcast:${factor}:26}" "${lowcast:0:26}" | tr "${upcast:${factor}:26}" "${upcast:0:26}" > "$filename"_d


IFS=' '

  
