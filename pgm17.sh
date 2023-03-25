#!/bin/bash
# 17. Program to find how many terminals this user logged in.
# Taking input from user
echo Program to find the terminals
echo "Enter LOGNAME OR UID"
read input
# checking if input is a UID or LOGNAME
if [[ $input ]] && [ $input -eq $input 2>/dev/null ]
then
echo "Number of terminals are "
cat /etc/passwd | grep $input -c
# If input is LOGNAME
else
cat /etc/passwd>userlist
echo "Number of terminals are "
grep -c $input userlist
fi
