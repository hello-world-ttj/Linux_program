#!/bin/bash
echo
echo The program to find word mca
len=${#@}
flag=0
if [ $len -eq 0 ]
then
echo No arguments please use with some arguments
exit
else
for i in $@
do
if grep -i -q "mca" $i
then
flag=1
break
fi
done
if [ $flag -eq 1 ]
then
echo "the word mca is found in the file $i"
echo The related content is
grep -i "mca" $i
echo
echo the number of times it occours
grep -c -i "mca" $i
else
echo "the word mca is not found in any file"
fi
fi
