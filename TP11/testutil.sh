#!/bin/bash

PS3="Sélectionnez : "
options=("Vérifier l'existence d'un utilisateur" "Connaître l'UID d'un utilisateur" "Quitter")
select opt in "${options[@]}"
do
    case $opt in
        "Vérifier l'existence d'un utilisateur")
			read -p "Tapez un nom d'utilisateur : " nom
            id -u $nom &> /dev/null
			reponse=$?
			if [ "$reponse" -eq 0 ]
			then
				echo "Utilisateur existant"
			else
				echo "Utilisateur inconnu"
			fi
            break
            ;;
        "Connaître l'UID d'un utilisateur")
			read -p "Tapez un nom d'utilisateur : " nom2
            echo "ID de $nom2 : ";id -u $nom2
            break
            ;;
        "Quitter")
            echo "Fermeture..."
            break
            ;;
        *) echo "Option invalide $REPLY";;
    esac
done
