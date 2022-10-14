#./bin/bash

MY_INPUT=' /home/alyssa/Scripts/job9/Shell_Userlist.csv'

while IFS=, read -r vID vPrenom vNom vMDP vRole ; do

	vUsername=$vNom$vPrenom
	sudo useradd -p $(openssl passwd -1 $vMDP) $vUsername

	if [ $vRole = 'Admin' ]; then
	sudo usermod -aG sudo $vUsername
	fi

done < Shell_Userlist.csv 
