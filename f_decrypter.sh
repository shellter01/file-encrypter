#!/bin/bash
clear
echo "Welcome $USER "
choice="Encrypt Decrypt Exit"
select option in $choice;
do
	if [ $REPLY = 1 ];
	then
		echo "You have selected Encrypt"
		sleep 1
		echo -n "Insert the file: "
		read file1
		gpg -c $file1
	elif [ $REPLY = 2 ];
	then
		echo "You have selected the Decrypt"
		sleep 1
		echo "Insert the file: "
		read file2
		gpg -d $file2
	elif [ $REPLY = 3 ];
	then
		echo "You chose to leave.."
		exit
fi
done

