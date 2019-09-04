#!/bin/bash

# Update directory to your directory list
DIRECTORYLIST="records/directories"
COUNTER=0

echo -e '\e[32m'
echo '|-----------------------------------------------------|'
echo "|----------------Directories Available----------------|"
echo '|-----------------------------------------------------|'
echo
while read -r line
do
	DIRECTORYITEMIZED[${#DIRECTORYITEMIZED[@]}]="$line"
	echo -e "\e[33m[${COUNTER}] \e[94m${line}"
	COUNTER=$(expr $COUNTER + 1)
done < "$DIRECTORYLIST"
echo
echo -e "\e[33m|-----------------------------------------------------|"
echo
echo -e "\e[36mWhich directory do you want to go to?\e[0m"
echo -n "Enter a number, and press [ENTER]: "
read SELECTION

echo -e "\e[33m|-----------------------------------------------------|"

echo ${DIRECTORYITEMIZED[${SELECTION}]}
cd ${DIRECTORYITEMIZED[${SELECTION}]}
exec bash