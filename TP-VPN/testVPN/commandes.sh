echo "Clé privée pour le CA"
openssl genrsa 2048 > ca-key.pem
echo "X509 pour le CA"
openssl req -new -x509 -nodes -days 365000 -key ca-key.pem -out ca-cert.pem
echo "Clé privée et requête du certificat"
openssl req -newkey rsa:2048 -nodes -days 365000 -keyout server-key.pem -out server-req.pem
echo "X509 pour le serveur"
openssl x509 -req -days 365000 -set_serial 01 -in server-req.pem -out server-cert.pem -CA ca-cert.pem -CAkey ca-key.pem
echo "Vérifier certificat serveur"
openssl verify -CAfile ca-cert.pem ca-cert.pem server-cert.pem
echo "Clé TLS"
openvpn genkey secret ta.key
echo "Clé Diffie Hellman"
openssl dhparam -out dhparams.pem 2048
echo "Transfert client utilitaire scp"
scp ca-cert.pem user@192.168.0.20:/home/user/tp-r504/TP-VPN/testVPN
