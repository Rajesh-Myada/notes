#!/bin/bash
myname=rajesh
echo "my name is" $myname
files=$(ls)
echo "ls command output is"
echo $files
path=$(pwd)
echo "pwd output is"
echo $path
now=$(date)
echo "system time and date is"
echo $now
echo "your username is : $USER"





#topic
#Variables are used to store data and used for multiple times
#syntax for variable declaration is
#var_name=var
#variables in the shell don't require a type declaration
#there are no spaces between the variable name and the equals sign, or between the equals sign and the value
#If you forget and type a space in between, the shell will treat the variable as if it were a command, and, since there is no such command, it will show an error.
#to recall the variable use the "$" sign before the name of variable (like myname=rajesh , echo $myname)
#when a variable is created in terminal it holds the value till the session is open, if you close the terminal the value of variable created in terminal is lost
#but unlike above, in scripts when are executed the variables are recreated every time, so that even if the terminal is closed the values of variable are still in the variables which are in scripts.
#the variables can be also used in the quotes of echo statement(name=rajesh , echo "my name is $myname" , the result is "my name is rajesh")

#there is a concept called sub-shell, where a command is asigned to variable as a input, and if the value of variable is printed(echo) then command which is stored in variable is executed in background and result of that command is printed(ex :- files_in_dir=$(ls) , output is list storage(ls) i.e list of files and dir in the current dir)

