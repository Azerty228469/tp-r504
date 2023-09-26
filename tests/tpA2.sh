#!/usr/bin/bash
if [ $USER = $1 ]; then
	echo "OUI"
else
	echo "NON"
fi
