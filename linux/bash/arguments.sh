#!/bin/bash

#echo "you entered the argument : $1"
#echo "you entered the arguments : $1, $2, $3"
#echo ls -lh $1
if [ $# -ne 1 ]
then
	echo "the scripts requires exactly one directory path pass to it."
	echo "please try again"
	exit 1
fi
lines=$(ls -l $1 | wc -l)
echo "you have $(($lines-1)) objects in $1 dir"





#Arguments are used to do certain things when certain arguments is enterd
#Like for example if the file "variables.sh" conatains one line 'echo "you entered the argument : $1"',here we cans see that there is no variable called "1" but we still used it, you may thing it raises and error but while executing it if arguments are passed then it will executed correctly
#	bash <file_name> <arg>
#	bash arguments.sh hello
#It is also possible to pass multiple arguments like
#	bash arguments.sh hi hello how_are_you
#we can access each elements by there index number starting at 1.
#The below example takes the path as a argument and prints the numbers of objects(file,folder,link etc), to execute it use bash arguments /path
#	lines=$(ls -l $1 | wc -l )
#	echo "you have $(($lines-1)) objects in $1 dir"
#In above command "-1" is used because the output of "ls -l" tha one line extra on top which is "total <number>",here number is size of the object in KB
#What happens for above code if no arguments have passed or more than required passed then, if arguments are less then remaining arguments then it takes some default values for remaining onces, and if they are more it takes only required values
#To solve this problem, checking the number of arguments are equal or not is neccessary
#	if [ $# -ne 1 ]
#	then
#       	echo "the scripts requires exactly one directory path pass to it."
#       	echo "please try again"
#       	exit 1
#	fi
#	lines=$(ls -l $1 | wc -l)
#	echo "you have $(($lines-1)) objects in $1 dir"
#Here "$#" stores the number of arguments, by using if statement number and "$#" number of arguments can be checked
#

