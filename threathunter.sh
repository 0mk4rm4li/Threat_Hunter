#!/bin/bash

if [ $EUID != 0 ]
then
  echo "Please run this script as root so as to see all details! Better run with sudo."
  exit 1
fi

green="\e[0;92m"
reset="\e[0m"
red="\e[0;91m"
bold="\e[1m"
blue="\e[0;94m"


echo -e "${blue}
  ________                    __       __  __            __
 /_  __/ /_  ________  ____ _/ /_     / / / /_  ______  / /____  _____
  / / / __ \/ ___/ _ \/ __ \/ __/    / /_/ / / / / __ \/ __/ _ \/ ___/
 / / / / / / /  /  __/ /_/ / /_     / __  / /_/ / / / / /_/  __/ /
/_/ /_/ /_/_/   \___/\__,_/\__/____/_/ /_/\__,_/_/ /_/\__/\___/_/ 
                             /_____/ ${reset}

				    ${red} - Made With <3 By Group_10.${reset}"


echo -e "${green}

 1. SQL Injection
 2. Cross Site Scripting (XSS)
 3. Local File Inclusion (LFI)
 4. Log Analysis${reset}${red}
 5. Exit ${reset}"
 echo ''
read -p " Enter the respective number from list that you want to test: " number

case $number in 
	1)	
		echo -e $"\n\n ${red} ========== Testing SQL Injection ========== ${reset}\n"
		read -p "Enter The URL : " sql
		~/scripts/./sql.sh $sql
		;;
	
	2)	
		echo -e $"\n\n ${red} ========== Testing Cross Site Scripting (XSS) ========== ${reset}\n"
		read -p "Enter the URL :" xss
		~/scripts/./xss.sh $xss
		;;
	
	3)	
		echo -e $"\n\n ${red} ========== Testing Local File Inclusion (LFI) ========== ${reset}\n"
		read -p "Enter The URL : " lfi
		~/scripts/./lfi.sh $lfi
		;;
	
	4)	
		echo -e $"\n\n ${red} ========== Doing Log Analysis ========== ${reset}\n"
		read -p "Enter The Path Of Log File : " log
		~/scripts/./log.sh $log
		;;
	
	5)	
		exit 1
		;;
	
	*)
		echo "Please give valid choice!!!"
		;;
	
esac	








