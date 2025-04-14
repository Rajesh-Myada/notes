#!/bin/bash
#the below code is used to echo if code ran successfully or not
exit_code()
{
	if [ $? -eq 0 ]
	then
		echo "------>code ran successfully<------"
	else
		echo "------>there is an error<------"
	fi

}

ls
exit_code
lsp
exit_code
echo "hi"
exit_code
echoo "hi"
exit_code




#in linux functions are same as functions in other languages
#write code onces and use multiple times
