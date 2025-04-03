#!/bin/bash
age=20
if [ $age -ge 18 ]
then
	echo "you are major"
else
	echo "you are minor"
fi

if [ -f hello_world.sh ]
then
	echo "file exists in current dir"
else
	echo "file does not exists"
fi

if [ -f ~/Desktop/notes/README.md ]
then
        echo "file exists in given location"
else
	echo "file does not exists"
fi

#to check if a app/package is install or not which command is used, so to intall if it is not there use the below code

#command=/usr/bin/htop
#if [ -f $command ]
#then
#	echo "$command is available, lets run it"
#else
#	echo "$command is not available, lets install it"
#	sudo apt update && sudo apt install -y htop
#fi
#$command

#in above script "&&" implies that is first condition is executed/true then secound condition is executed/true
#and "-y" implies that assume yes i.e if promte ask "Y/N" the answer is "yes"

#the above script can also be written as

program=htop
if command -v $program
then
        echo "$program is available, lets run it"
else
        echo "$program is not available, lets install it"
        sudo apt update && sudo apt install -y $program
fi
$command

#in above script the command "command" is used to see is the command is there or not





#topic
#if is a conditional statement which has some code inside it and it is executed when the condition in if statement is true
#syntax of if statement is

#if [ condition ]
#then
#       statement1
#       statement2
#       .
#       .
#       .
#fi

#space between condition, brackets, if, is need.

#syntax of if-else statement is

#if [ condition ]
#then
#        statement1
#        statement2
#        .
#        .
#        .
#else
#       statement1
#       statement2
#       .
#       .
#       .
#fi

#For numerical comparisons the operators used are
#eq – equality
#lt – less than
#le – lesser than or equal
#gt – greater than
#ge – greater than or equal
#ne – not equal
#example
#age=20
#if [ $age -ge 18 ]
#then
#        echo "you are major"
#else
#        echo "you are minor"
#fi

#in "if condition" if any file/folder need to be searched then:
#       if [ -f filename ] //for files in same dir
#       if [ -f filepath/filename ] //for files in different dir
#       if [ -d dirname] //for dir in same dir
#       if [ -d dirpath/dirname ] //for dir in diffrent dir

#to check if a app/package is install or not which command is used, so to intall if it is not there use the below code

#command=/usr/bin/htop
#if [ -f $command ]
#then
#       echo "$command is available, lets run it"
#else
#       echo "$command is not available, lets install it"
#       sudo apt update && sudo apt install -y htop
#fi

