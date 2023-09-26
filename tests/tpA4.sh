#!/usr/bin/bash
if [ "$1" == "" ]; then
	echo "Argument manquant"
else
	for i in /etc/
	do
		file $i$1*
	done
fi
