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


