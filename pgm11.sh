#!/bin/bash
echo Program to find prime between 1 to n
echo enter the upper limit
read upper
flag=0
number=2
echo The prime numbers are:
while [ $number -le $upper ]
do
flag=0
for((i=2; i<=$number/2; i++))
do
num=$((number % i))
if [ $num -eq 0 ]
then
flag=1
break
fi
done
if [ $flag -eq 0 ]
then
echo -n $number " "
fi
((number = number + 1))
done
