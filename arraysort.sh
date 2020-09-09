#!/bin/bash
echo "Welcome to Sorting Arithmetic Computation Problem "
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c
printf 'compute1=%0.0f' "$(( a +b * c ))"
