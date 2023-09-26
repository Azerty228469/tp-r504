#!/usr/bin/bash
n=$1
if [ "$n" -gt 10 ]
then
	echo "Argument supérieur à 10"
	exit 1
elif [ "$n" -lt 0 ]
then
	echo "Argument inférieur à 0"
	exit 1
fi
for i in $(seq 0 "$n")
do
	cd ~
	mkdir a$i
	cd a$i
	touch log.txt
	cat "Date de création : $(date +"%d/%m/%Y")\nHeure de création : $(date +"%H:%M:%S")" > a$i/log.txt
done
