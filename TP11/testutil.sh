#!/bin/bash

PS3="Sélectionnez"
options=("1 - Vérifier l'existence d'un utilisateur" "2 - Connaître l'UID d'un utilisateur" "q - Quitter")
select opt in "${options[@]}"
do
    case $opt in
        "1 - Vérifier l'existence d'un utilisateur")
            echo "1"
            ;;
        "2 - Connaître l'UID d'un utilisateur")
            echo "2"
            ;;
        "q - Quitter")
            break
            ;;
        *) echo "Option invalide $REPLY";;
    esac
done

