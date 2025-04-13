#!/bin/bash

read -p "enter number of numbers:" n
sum=0
for ((i=0;i<n;i++))
do
	read -p "enter num $(( $i + 1 )):" num
	sum=$(( $sum + $num ))

done
echo "scale=4; $sum/$n"  | bc | awk '{printf "%.3f",$0}'
