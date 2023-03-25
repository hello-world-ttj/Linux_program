#!/bin/bash
len=${#@}
echo
echo Count Lines and Words program
if [ $len -eq 0 ]
then
file="myfile.txt"
echo No files provided...
echo Enter text and press ctrl+d to save
cat >> $file
else
file=$1
fi
echo -n The number of lines are:
wc -l < $file
echo -n and the number of words are:
wc -w < $file
