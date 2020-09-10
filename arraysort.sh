#!/bin/bash 
echo "Welcome to Sorting Arithmetic Computation Problem "
declare -A result
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c
compute1=`echo "$a + $b * $c" | bc -l`
compute2=`echo "$a * $b + $c" | bc -l`
compute3=`echo "scale=2;$c + $a / $b" | bc -l`
compute4=`echo "scale=0;$a % $b + $c" | bc -l`
result[1]="$compute1"
result[2]="$compute2"
result[3]="$compute3"
result[4]="$compute4"

echo "Dictionary :  ${result[@]}"
echo "Array : "
for i in ${!result[@]}
do
	arr[i]=${result[$i]}
	echo -n "${arr[i]} "
done

printf "\n"
echo "Results in Descending Order "

n=${#result[@]}

for (( i=1;i<=n-1;i++ ))
do
	for (( j=i;j<=n-i;j++ ))
	do
	if [[ ${arr[$((j+1))]%%.*} -gt ${arr[j]%%.*} ]]
	then
		temp=${arr[j+1]}
		arr[$((j+1))]=${arr[j]}
		arr[j]=$temp
	fi
	done
done

for ((i=1;i<=n;i++))
do
	echo -n "${arr[$i]} "
done
