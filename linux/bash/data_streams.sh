#!/bin/bash

echo "enter your name : "
read myname
echo "your name is : " $myname









#Data streams allows us to take input from user and where normal output and errors goes/printed.
#Data streams are of three types
#	standard input
#	standard output
#	standard error

#STANDARD OUTPUT
#---------------
#Standard output is the output that is printed to the screen
#result which is printed because of execution of a command is standard output
#
#
#STANDARD ERROR
#--------------
#Standard error is the error that is printed to the screen
#result which is printed because of execution of a wrong/incorrect command is standard error
#then question comes how to identify if the command result is standard output or standard error,the concept which is used to identify it is exit code.
#the exit code comand is "echo $?" (type just below/after the execution of commad which is need to identified )
#if the result of exit code is "0" then it is standard output (the code executed correctely) other than "0"is standard error.

#the command "find /etc -type f" prints the all files in /etc dir and its sub dirs
#the above command prints standard output and error
#the command "find /etc -type f 2> /dev/null" prints the all files path in /etc dir and its sub dirs and paste the error message in /dev/null (/dev/null is like black hole what ever copied/moved here is permanently deleted)
#the above command prints statndard output and append the standard error to "/dev/null"
#the command "find /etc -type f 1> /dev/null" prints the error message and paste the files path which are present in /etc dir and its sub dirs in /dev/null (/dev/null is like black hole what ever copied/moved here is permanently deleted)
#the above command prints statndard error and moves the standard output to "/dev/null"
#the command "find /etc -type f > /dev/null" is same as the command "find /etc -type f 1> /dev/null"
#the command "find /etc -type f &> /dev/null" moves all the files path and error to "/dev/null"
#the above command moves standard output and error to "/dev/null"
#the command "find /etc -type f 1> file_name_1.txt 2> file_name_2.txt" moves all output to file_name_1 and error to file_name_2
#the above command moves standard output to file_name_1 and standard error to file_name_2

#STANDARD INPUT
#--------------
#to take input from user use command "read var_name"

#echo "enter your name : "
#read myname
#echo "your name is : " $myname
#you can also do 'read -p "enter your name : " name'
