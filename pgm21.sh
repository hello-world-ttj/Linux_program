#!/bin/bash
len=${#@}
if [ $len -eq 0 ]
then
echo No arguments please use with some arguments
exit
else
echo Check files exists or not
for i in $@
do
#-e Returns true value if file exists.
if [ -e $i ]
then
echo $i " file exists "
else
echo $i " File not Exists "
fi
done
fi
