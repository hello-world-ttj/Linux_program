#!/bin/bash
echo "enter the number of elements"
read n
echo "enter $n values"
for((i=0 ; i < $n ; i++))
do
read arr[$i]
done
echo "array values before sort"
echo ${arr[*]}
for((i=0 ; i < n ; i++))
do
for((j=0 ; j < n-i-1; j++))
do
if test ${arr[j]} -gt ${arr[((j+1))]}
then
temp=${arr[j]}
arr[$j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "array values after sort"
echo ${arr[*]}
