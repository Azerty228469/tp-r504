function creation {
	echo "Creation de l'utilisateur $1"
	sudo adduser $1 --disabled-password --gecos ""
	sudo chpasswd $1:$2
}
creation $1 $2
