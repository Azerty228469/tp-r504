#!/usr/bin/bash
count_server_1=0
count_server_2=0

for i in {1..500}; do
    response=$(curl -s http://localhost:83)
    
    # Vérifier à quelle serveur la réponse appartient
    if [[ $response == "<h1>Hello 1</h1>" ]]; then
        ((count_server_1++))
    elif [[ $response == "<h1>Hello 2</h1>" ]]; then
        ((count_server_2++))
    fi
done

echo "Nombre de réponses du serveur 1 : $count_server_1"
echo "Nombre de réponses du serveur 2 : $count_server_2"
