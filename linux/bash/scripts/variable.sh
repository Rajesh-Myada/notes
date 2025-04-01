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
