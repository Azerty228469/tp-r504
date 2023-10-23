for ligne in $(cat liste1.txt); do
sudo adduser $ligne --disabled-password --gecos ""
sudo groupadd -f t_users
sudo usermod -aG t_users $ligne
done
