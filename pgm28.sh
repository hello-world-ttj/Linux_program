#!/bin/bash
len=${#@}
echo
echo The File and Directory checking program
if [ $len -eq 0 ]
then
echo No arguments please use with some arguments
exit
else
echo Check files exists or not Program
for i in $@
do
#-e Returns true value if file exists.
if [ -d $i ]
then
echo $i " is a Directory"
else
echo $i " is a file "
echo -n and the number of lines are:
wc -l < $i
fi
done
fi
