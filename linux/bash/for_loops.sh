#!/bin/bash

#for current_number in 1 2 3 4 5 6 7 8 9 10
#do
#	echo $current_number
#	sleep 0.5
#done
#
#echo "this is output of for loop"

#for current_number in {1..10}
#do
#	echo $current_number
#	sleep 0.5
#done

#echo "this is output of for loop"

#for the below code the pre requisite are
#	create logfiles dir
#	copy logfiles from /var/logfiles/ with .log extention to logfiles in current dir
#the below code creats th .tar.gz zip files of .log files 
#to check if below code only zip the .log files and not other files, create a file i logfiles dir with diffrent extenstion(ex:- logfile.txt)
#after execution of script check the files in logfiles dir

for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
done





#topic
#for loop is a concept of executing a command or set of commands against each item in a set
