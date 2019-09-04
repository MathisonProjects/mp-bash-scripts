#!/bin/bash

echo -e '\e[32m'
echo '|-----------------------------------------------------|'
echo "|----------------GIT Add, Commit, Push----------------|"
echo '|-----------------------------------------------------|'
echo -e "\e[36m"

git config --get remote.origin.url

echo -e "\e[0m"
echo -n "Commit message [ENTER]: "
read COMMITMESSAGE

echo -e "\e[36m"
git add .
git commit -m "${COMMITMESSAGE}"
git push origin master