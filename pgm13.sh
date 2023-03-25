#!/bin/bash
function fact() {
local n=$1
if [[ $n -eq 0 ]]; then
echo 1
else
echo $((n*$(fact $n-1)))
fi
}
#Factorial function
echo program to find the sum of series
echo enter the upper limit
read n
sum=0
for ((i=1;i<=n;i++))
do
if (($i == $n)) 
then
printf "$i/$(fact $i)=$sum"
else
printf "$i/$(fact $i)+"
fi
sum=`expr "$sum + ($i / $(fact $i))"|bc`
done
echo
echo "Sum $n series is $sum"
