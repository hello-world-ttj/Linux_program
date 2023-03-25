#!/bin/bash
n=0
echo The program to find the number at odd position
read -p "Enter a number : " n
echo $n
l=${#n}
i=1
echo The odd position numbers are
while [ $i -le $l ]
do
d=$(echo $n | cut -c $i)
echo -n $d " "
((i= i + 2))
done
