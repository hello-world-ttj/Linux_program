#!/bin/bash
echo The program to find the sum of digits, Palindrome, and Reverse
echo enter the number to reverse, sum of digits, palindrome
read num
dsum=0
rev=0
num1=$num
while ((num > 0))
do
check=$((num % 10))
((dsum = check + dsum))
((num = num / 10))
((rev = rev * 10 + check))
done
echo The Sum is: $dsum
echo The Reverse is: $rev
if [ $rev -eq $num1 ]
then
echo the number is palindrome
else
echo the number is not palindrome
fi
