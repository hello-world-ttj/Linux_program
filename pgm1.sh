#!/bin/bash
echo Enter the first number
read a
echo Enter the second number
read b
sum1=`expr "$a + $b" | bc`
product=`expr "$a * $b" | bc`
div=`expr "$a / $b" | bc`
mod=`expr "$a % $b" | bc`
diff=`expr "$a - $b" | bc`
echo The sum is : $sum1
echo The difference is : $diff
echo The product is : $product
echo The division result is : $div
echo The remainder is : $mod

