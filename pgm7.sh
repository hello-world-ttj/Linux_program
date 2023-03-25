#!/bin/bash
#07 Program to calculate Student Marks and Grade
echo Student Marks and Grade Program
echo =====================================
echo "enter Total no of students :"
read n
count=1
while [ $count -le $n ]
do
total=0
read -p "Enter name of Student: " name
for((i=1; i <= 5;i++))
do
echo "enter marks of $name for subject $i : "
read marks
total=$(( $total + $marks))
done
percent=`expr "$total * 100 / 500" |bc`
echo The Total Marks of $name is $total and Percentage is $percent
if [ $percent -ge 80 ]
then
echo The Grade got for $name is: Distinction
elif test $percent -ge 60
then
echo The Grade got for $name is: First Class
elif test $percent -ge 50
then
echo The Grade got for $name is: Second Class
else
echo $name got Failed
fi
((count= count + 1))
echo =======================================
done
