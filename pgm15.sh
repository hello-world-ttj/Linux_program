#!/bin/bash
while :
do
clear
echo The program to List, Display, Make Dir, Copy and Rename File
printf "\nSELECT YOUR OPTION\n"
echo "1. List Directory"
echo "2. Create Directory"
echo "3. Copy Files"
echo "4. Display Files"
echo "5. Rename a File"
echo "6. Delete a file"
echo "7. Exit from program"
echo "Enter your menu choice [1-7]: "
read choice
case $choice in
# Pattern 1
1) ls
read -p "Press any key...: " ;;
# Pattern 2
2) echo "Enter The Directory Name"
read dirName
mkdir $dirName;
echo Directory Created...
read -p "Press any key...: " ;;
# Pattern 3
3) read -p "Enter name of the file to be copied :" fname
read -p "Enter the name of the new file :" newname
cp $fname $newname
echo File copied...
read -p "Press any key...: " ;;
# Pattern 4
4) echo Enter the file name to be read
read fname
cat $fname
read -p "Press any key...: " ;;
# Pattern 5
5) echo Enter the file name
read fname
echo Enter the new name to be renamed
read newname
mv $fname $newname
echo file renamed...
read -p "Press any key...: " ;;
# Pattern 6
6) echo Enter the file name
read fname
rm $fname
echo file deleted...
read -p "Press any key...: " ;;
# Pattern 7
7) echo "Quitting ..."
exit;;
# Default Pattern
*) echo "invalid option";;
esac
done
