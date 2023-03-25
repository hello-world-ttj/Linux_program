#!/bin/bash
function fact() {
local n=$1
if [[ $n -eq 0 ]]; then
echo 1
else
echo $((n*$(fact $n-1)))
fi
}
echo
echo The Factorial Program with Function
echo Enter the number
read number
echo The factorial is $(fact $number)
