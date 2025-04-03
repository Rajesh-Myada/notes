#package=htop
#sudo apt install $package
#echo "the exit code for the command is: $?"

#package=doesnotexist
#sudo apt install $package
#echo "the exit code for the command is: $?"

#package=htop
#sudo apt install $package
#if [ $? -eq 0 ]
#then
#	echo "the $package is installed"
#	echo "the new command is available here:"
#	which $package
#else
#	echo "$package failed to install"
#fi

#package=htop
#sudo apt install $package >> package_install_result.log
#if [ $? -eq 0 ]
#then
#       echo "the $package is installed"
#       echo "the new command is available here:"
#       which $package
#else
#       echo "$package failed to install" >> package_install_failure.log
#fi
#
#package=notexist
#sudo apt install $package >> package_install_result.log
#if [ $? -eq 0 ]
#then
#       echo "the $package is installed"
#       echo "the new command is available here:"
#       which $package
#else
#       echo "$package failed to install" >> package_install_failure.log
#fi

#to exit/stop the execution of the script in between and to write a exit code to it use "exit <some_number>"

#age=19
#if [ $age -gt 18 ]
#then
#	echo "major"
#	exit 0
#else
#	echo "minor"
#	exit 0
#fi
#echo "you will not see line"
#echo "also this line"
#echo "it is due to 'exit command'"





#topic
exit codes are used to find out whether the entered command is executed properly or it raised any error
#after a command is execuited, if it fails it raises the error
#but in linux there is a command to see if the previous command is properly execuited

#the ocmmand is "echo #?"
#the output of echo #? is either "0" or other number
#the 0 as the output means the command is execuited successfully,other than 0 means it raised an error

#to redirect the output of a command to a file use
#package=htop //package=notexist (can be used to record error)
#sudo apt install $package >> package_install_result.log

#to exit/stop the execution of the script in between and to write a exit code to it use "exit <some_number>"

#age=19
#if [ $age -gt 18 ]
#then
#       echo "major"
#       exit 0
#else
#       echo "minor"
#       exit 0
#fi
#echo "you will not see line"
#echo "also this line"

