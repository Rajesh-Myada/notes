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





#topic
#here to do mathematical expressions "expr" command is used before expression.
#example :-
#expr 20 + 10
#expr 20 - 10
#expr 20 / 10
#expr 20 \* 10
##but for multiplication escape character(\) is used, because here(20 * 10) is special character and it as some other purpose, "*" represents "everything" and it gives error as "20: command not found"
#num1=100
#echo "num1 is: $num1" (o/p: num1 is 100)
#num2=50
#echo "num2 is: $num2" (o/p: num2 is 50)
#echo "sum of num1 and num2 is: $(expr $num1 + $num2)" (o/p: sum of num1 and num2 is 150)

