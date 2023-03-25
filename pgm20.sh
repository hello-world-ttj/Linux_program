#!/bin/bash
#20 Compare files with Command line arguments
len=${#@}
if(( $len == 0 )) 
then
echo No arguments please use with two arguments
exit
else
 file1=$1
 file2=$2
 if [ -f $file1 -a -f $file2 ]
 then
 echo The file Comparison Program
 #Checking the files are equal
   if cmp -s "$file1" "$file2"; then
   printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
   read -p "do you want to delete the second file y/n " chk
	if [ "$chk" = "y" ]
	then
	rm $file2
	echo The second duplicate file deleted...
	fi
   else
    printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
   fi
 else
 echo "File(s) not exists!"
 fi
fi
