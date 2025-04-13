#!/bin/bash

read exp
ans=$(echo "scale=5;$exp" |bc | awk '{printf "%.3f", $0}')
echo $ans
