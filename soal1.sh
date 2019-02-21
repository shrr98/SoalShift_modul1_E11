#!/usr/bin/bash

i=1
for f in ./nature/*.jpg; do
	base64 -d "$f" | xxd -r  > ./nature/decryp/$i.jpg
	i=$(($i+1))
done

