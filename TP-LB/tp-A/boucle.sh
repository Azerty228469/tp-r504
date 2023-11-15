#!/usr/bin/bash
compte_s1=0
compte_s2=0

for i in {1..500}; do
    result=$(curl -s http://localhost:83)
    
    # Vérifier à quelle serveur la réponse appartient
    if [[ $result == "<h1>Hello 1</h1>" ]]; then
        ((compte_s1++))
    elif [[ $result == "<h1>Hello 2</h1>" ]]; then
        ((compte_s2++))
    fi
done

echo "Nombre de réponses du serveur 1 : $compte_s1"
echo "Nombre de réponses du serveur 2 : $compte_s2"
