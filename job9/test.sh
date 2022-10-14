#!:/bin/bash

MY_INPUT='Shell_Userlist.csv'

while IFS=, read -r vID vPrenom vNom vMDP vRole; do 
    echo useradd -r "$vPrenom$vNom"


done < "$MY_INPUT"
