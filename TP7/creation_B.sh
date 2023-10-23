while read v_nom v_passwd
do
	echo "nom=$v_nom passwd=$v_passwd"
	echo $v_nom:$v_passwd | sudo chpasswd
done < liste2.txt
