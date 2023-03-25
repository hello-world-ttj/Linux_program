#!/bin/bash
echo The program to find Gross Salary
echo Enter total no of employees
read n
count=1
while [ $count -le $n ]
do
echo enter the basic salary
read bsalary
if [ $bsalary -lt 15000 ]
then
gsal=`expr "$bsalary + ($bsalary * .03) + 500 + ($bsalary * .1)" | bc`
echo the gross salary is $gsal
else
gsal=`expr "$bsalary + ($bsalary * .05) + 1000 + ($bsalary * .15)" | bc`
echo the gross salary is $gsal
fi
((count = count + 1))
done
