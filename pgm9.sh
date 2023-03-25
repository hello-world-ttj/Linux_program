#!/bin/bash
echo The multiplication table
echo Enter the number to find the multipliation table
read n
echo Enter the Range upto where the table required
read r
i=1
while [ $i -le $r ]
do
echo " $n x $i = `expr $n \* $i` "
i=`expr $i + 1`
done
