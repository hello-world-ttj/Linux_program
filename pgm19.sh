#!/bin/bash
echo Linux Program to List files with Permissions
for i in `ls`
do
exist=""
read=""
write=""
exe=""
#-e Returns true value if file exists.
if [ -e $i ]
then
exist=" file exists "
fi
#-r Return true value if file exists and is readable
if [ -r $i ]
then
read=" readabale "
fi
#-w Return true value if file exists and is writable
if [ -w $i ]
then
write=" Writable "
fi
#-x Return true value if file exists and is executable.
if [ -x $i ]
then
exe=" Executable "
fi
printf "%-35s" $i
echo -- $exist -- $read -- $write -- $exe
done
