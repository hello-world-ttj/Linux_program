#!/bin/bash
echo Pgm to Accept even files and copy 1 to 2, 3 to 4
len=${#@}
echo File copying program
if [ $len -eq 0 ]
then
echo No arguments please use with some arguments
exit
elif [ `expr $len % 2` -eq 0 ]
then
for ((i=1; i<$len; i+=2))
do
if [ -f ${!i} ]
then
((j=i+1))
cp ${!i} ${!j}
echo Files Copied ${!i} to ${!j}
else
echo ${!i} " File not Exists "
fi
done
else
echo you are entered odd files
echo Error!!
fi
