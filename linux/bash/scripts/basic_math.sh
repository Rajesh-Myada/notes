#!/bin/bash
expr 20 + 10
expr 20 - 10
expr 20 / 10
expr 20 \* 10
num1=100
echo "num1 is: $num1"
num2=50
echo "num2 is: $num2"
echo "sum of num1 and num2 is: $(expr $num1 + $num2)"
expr $num1 + $num2
