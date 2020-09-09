#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Problem "
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c
compute1=`echo "$a + $b * $c" | bc -l`
compute2=`echo "$a * $b + $c" | bc -l`
compute3=`echo "scale=2;$c + $a / $b" | bc -l`
echo compute1="$compute1"
echo compute2="$compute2"
echo compute3="$compute3"

