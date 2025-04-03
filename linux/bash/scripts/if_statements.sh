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

