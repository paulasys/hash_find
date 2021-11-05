#!/bin/bash

if [ "$1" == "" ]
then
	echo "USO:"
	echo "$ ./hash_find <wordlist>"
else


echo "------------------------------------"
echo "          HASH FIND              "
echo "------------------------------------"

echo "Informe o hash"
read hashinput
echo ""
echo "Informe o tipo de hash (sha1sum, md5sum, etc)"
read mode

	for i in $(cat $1);
		do
			hash="$(echo "$i" | $mode --tag)"
			echo "$hash $i" >> f1leh4sh.txt
		done
		var=$(cat f1leh4sh.txt | grep "$hashinput")
		echo ""
		echo "$var"

rm f1leh4sh.txt
fi
