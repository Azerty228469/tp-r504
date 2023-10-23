while IFS=";" read v_nom v_passwd
do
	v_passwd=$(date +%s | sha256sum | head -c 8)
	echo $v_nom:$v_passwd | sudo chpasswd
	echo "nom=$v_nom passwd=$v_passwd"
done < liste3.txt
