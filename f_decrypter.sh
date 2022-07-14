#!/bin/bash
clear
echo -e "\033[34m Welcome $USER \033[0m"
choice="Encrypt Decrypt Exit"
select option in $choice;
do
	if [ $REPLY = 1 ];
	then
		echo -e "\033[34m You have selected Encrypt \033[0m"
		sleep 1
		echo -n -e "\033[32m Insert the file: \033[0m "
		read file1
		gpg -c $file1
		rm -rf $file1
	elif [ $REPLY = 2 ];
	then
		echo -e "\033[34m You have selected Decrypt \033[0m"
		sleep 1
		echo -e "\033[32m Insert the file: \033[0m"
		read file2
		gpg -d $file2
	elif [ $REPLY = 3 ];
	then
		echo -e "\033[31m You chose to leave.. \033[0m"
		exit
fi
done

