#!/bin/bash
while :
do
echo "Student Management System"
printf "\nSELECT YOUR OPTION\n"
echo "1. Add Record"
echo "2. View All Records"
echo "3. View a Record"
echo "4. Delete a Record"
echo "5. Exit from program"
echo "Enter your menu choice [1-5]: "
read choice
case $choice in
# Pattern 1
1) read -p "enter rollnumber of student " number
   read -p "enter name of student " name
   read -p "enter marks Subject1 " sub1
   read -p "enter marks Subject2 " sub2
   read -p "enter marks Subject3 " sub3
   total=`expr "$sub1 + $sub2 + $sub3" |bc`
   record="$number,$name,$sub1,$sub2,$sub3,$total"
   echo $record >> stud_data.dt
   read -p "Press any key...: " ;;
# Pattern 2 view all records
2) printf "Number \tName\tSubject1\tSubject2\tSubject3\tTotal\n"
   while read line
   do
   for j in $line
   do
   sno=$(echo "$j" | cut -d "," -f 1)
   snm=$(echo "$j" | cut -d "," -f 2)
   sub1=$(echo "$j" | cut -d "," -f 3)
   sub2=$(echo "$j" | cut -d "," -f 4)
   sub3=$(echo "$j" | cut -d "," -f 5)
   total=$(echo "$j" | cut -d "," -f 6)
   done
   printf '%s\t%s\t\t%s\t%s\t\t%s\t\t%s\n' "$sno" "$snm" "$sub1" "$sub2" "$sub3" "$total"
   done < stud_data.dt
   read -p "Press any key...: " ;;
3)
   read -p "Enter the Student Number " csno
   while read line
   do
   for j in $line
   do
   sno=$(echo "$j" | cut -d "," -f 1)
   snm=$(echo "$j" | cut -d "," -f 2)
   sub1=$(echo "$j" | cut -d "," -f 3)
   sub2=$(echo "$j" | cut -d "," -f 4)
   sub3=$(echo "$j" | cut -d "," -f 5)
   total=$(echo "$j" | cut -d "," -f 6)
   done
   if [ $csno -eq $sno ]
   then
   break
   fi
   done < stud_data.dt
   if [ $csno -eq $sno ]
   then
   printf "Number \tName\tSubject1\tSubject2\tSubject3\tTotal\n"
   printf '%s\t%s\t\t%s\t%s\t\t%s\t\t%s\n' "$sno" "$snm" "$sub1" "$sub2" "$sub3" "$total"
   else
   echo No records found
   fi
   read -p "Press any key...: " ;;
# Pattern 4 Delete Record
4)
   echo "enter roll number "
   read rn
   grep ^$rn stud_data.dt
   if [ $? -ne 0 ]; then
   echo "record for roll number does not exist "
   else
   grep -v $rn stud_data.dt > tmp
   cp tmp stud_data.dt
   echo "deletion complete "
   fi
   read -p "Press any key...: " ;;
# Pattern 5
5) echo "Quitting ..."
   exit;;
# Default Pattern
*) echo "invalid option";;
esac
done
