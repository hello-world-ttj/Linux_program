#!/bin/bash
echo Enter the cost price of the product
read cost
echo Enter the Selling price of the product
read sell
if [ $cost -gt $sell ]
then
loss=`expr "$sell - $cost" | bc`
echo loss is $loss
else
profit=`expr "$sell - $cost" | bc`
echo profit is $profit
fi
