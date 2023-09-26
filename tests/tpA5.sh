#!/usr/bin/bash
if [ "$1" == "" ]; then
	echo "Argument manquant"
else
	find /etc/ -maxdepth 1 -type f -iname "$1*" -exec file {} \;
fi
