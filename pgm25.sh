#!/bin/bash
function palindrome (){
local input=$1
reverse=""
len=${#input}
for ((i=$len-1; i>=0; i-- ))
do
reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse ]
then
echo the word $input is palindrome
else
echo the word $input is not palindrome
fi
}
echo The Palindrome Checking Program
read -p "Enter the Word to check " word
echo $(palindrome $word)
