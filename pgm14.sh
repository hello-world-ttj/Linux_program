#!/bin/bash
echo leap year finding Program
echo enter the year to test. \(press enter for current year\)
read year #if null entry will assign current year
if [ -z "$year" ]
then
year=$(date +"%Y")
fi
check=`echo $year % 4 | bc`
if [ $check -eq 0 ]
then
if [ `echo $year % 100 |bc ` -eq 0 ]
then
if [ `echo $year % 400 |bc` -eq 0 ]
then
echo the year $year is a leap year
else
echo the year $year is not a leap year
fi
else
echo the year $year is a leap year
fi
else
echo the year $year is not a leap year
fi
