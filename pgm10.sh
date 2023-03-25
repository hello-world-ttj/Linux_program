#!/bin/bash
echo Program to find the power of number
echo "Input number"
read a
echo "Input power"
read b
((ans = a ** b))
echo "$a to the power of $b is $ans"
