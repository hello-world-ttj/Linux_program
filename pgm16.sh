#!/bin/bash
while :
do
clear
echo Write a menu driven program to display the following options
printf "\nSELECT YOUR OPTION\n"
echo "1. Contents of /etc/passwd"
echo "2. List of output of ‘who’"
echo "3. Present working directory"
echo "4. Exit from program"
echo "Enter your menu choice [1-7]: "
read choice
case $choice in
# Pattern 1
1) cat etc/passwd
read -p "Press any key...: " ;;
# Pattern 2
2) who
read -p "Press any key...: " ;;
# Pattern 3
3) pwd
read -p "Press any key...: " ;;
# Pattern 4
4) echo "Quitting ..."
exit;;
# Default Pattern
*) echo "invalid option";;
esac
done
