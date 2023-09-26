#!/usr/bin/bash
n1="$1"
n2="$2"
if [ "$1" == "" ]; then
	n1=5
fi
if [ "$2" == "" ]; then
	n2=$n1+10
fi
for ((i = $n1 ; i <= $n2 ; i++));
do
	echo $i
done
