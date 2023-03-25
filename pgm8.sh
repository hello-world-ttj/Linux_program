#!/bin/bash
echo Enter the character
read ch
if [[ "$ch" =~ [A-Z] ]]
then
echo The character is UPPERCASE
elif [[ "$ch" =~ [a-z] ]]
then
echo The character is Lowercase
elif [[ "$ch" =~ [0-9] ]]
then
echo The character is a Digit
elif [[ "$ch" =~ ['!@#\$%^\&*()_-+'] ]]
then
echo it is a Special Character
else
echo Nothing matching....
fi
