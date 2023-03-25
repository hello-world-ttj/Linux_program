#!/bin/bash
# 18 Program to Append a file
echo The file append program
# Taking input from user
echo -n "Enter file name : "
read file
#check the file exists or not
if test -f "$file"
then
# find out if file has write permission or not
if [ -w $file ]
then
echo you have write permission on file: $file
echo Enter text and press ctrl+d to save
cat >> $file
else
echo no write permission
fi
printf "\nThe Appended file " $file " is follows :\n"
cat $file
else
echo The file does not exists!!
fi
