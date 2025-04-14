#!/bin/bash

#echo "1 - print first name"
#echo "2 - print last name"
#echo "3 - print DOB"
#echo "4 - print gender"

#read -p "enter your choice : " option

#case $option in
#	1) echo "First name : Rajesh";;
#	2) echo "Last name : Myada";;
#	3) echo "DOB : 05/09/2001";;
#	4) echo "Gender : Male";;
#	*) echo "you have entered wrong choice"
#esac

finished=0
while [ $finished -ne 1 ]
do
	echo "1 - print first name"
	echo "2 - print last name"
	echo "3 - print DOB"
	echo "4 - print gender"
	echo "5 - exit"
	read -p "enter your choice : " option

	case $option in
		1) echo "First name : Rajesh";;
		2) echo "Last name : Myada";;
 	        3) echo "DOB : 05/09/2001";;
	        4) echo "Gender : Male";;
		5) finished=1;;
	        *) echo "you have entered wrong choice"
esac
done








#Case statement
#Case statement is same as switch case in other programming languages
#last case/option is "*" which is like default i.e, if the user entered other than the give options then the "*" option is selected by default
#also the last options does not require two semi colons(";;") at the end
