for ligne in $(cat liste1.txt); do
sudo deluser --remove-home $ligne
done
