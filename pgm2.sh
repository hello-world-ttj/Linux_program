#!/bin/bash
echo The Area, Perimeter and Circumference Calculator
echo enter the length of the rectange
read length
echo enter the breadth of the rectangle
read width
area=`expr "$length * $width" | bc`
perim=`expr "2 * ($length + $width)" | bc`
echo area is $area
echo perimeter is $perim
echo Enter the radious
read rad
vol=`expr "2 * 3.1415 * $rad" |bc`
cir=`expr "3.1415 * $rad * $rad" |bc`
echo the area of circle is $vol
echo the circumference is $cir
