#!/bin/bash

if [ "$#" -eq 1 ]
then
	chemin_absolu="$1"
	IFS='/' read -ra chemins <<< "$chemin_absolu"
	chemin_partiel=""
	for dossier in "${chemins[@]}"; do
	    chemin_partiel+="/$dossier"
	    if [ ! -d "$chemin_partiel" ]; then
	        echo "Chemin invalide, le dossier $dossier n'existe pas dans $chemin_partiel"
	        exit 1
	    fi
	done
	echo "Chemin valide"
else
	echo "Un seul argument est requis."
fi
