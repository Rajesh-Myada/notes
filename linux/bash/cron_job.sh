#!/bin/bash









#The second method is "cron"
#To edit crontab use command "crontab -e" ( e stands for edit )
#if it is the first time typing the above command you will see bunch of options to select the text editor, select the desired editor.
#	crontab -e
#	Output:
#		no crontab for rajesh - using an empty one
#
#		Select an editor.  To change later, run 'select-editor'.
#		1. /bin/nano        <---- easiest
#		2. /usr/bin/vim.basic
#		3. /usr/bin/vim.tiny
#		4. /bin/ed

#		Choose 1-4 [1]:
#Select any text editor ( I selected 2. /user/bin/vim.basic )
#You acn see bunch of lines which are commented, it tells about the crontab
#It will open crontab file in "/tmp/crontop."
#But crontab is not in "tmp" dir, the command "crontab -e" open a copy of original file in temp, it is done to check whether the enterd command in crontab is correct/no typo or not, if it is corrent then it applies those changes to original crontab file
#When the current user edits the crontab file they are changing th job in current user's crontab, it doesn't effect with other user jobs
#To edit the crontab of other user use command
#	sudo crontab -u <user_name> -e
#examples for cron job
#	57 20 * * * date >> /home/rajesh/Desktop/notes/linux/bash/logfile_for_cron_job
#	the above command appends date to logfile_for_cron_job at 20:57 (8:57) every day
#	@reboot  echo "login at $(date)" >> /home/rajesh/Desktop/notes/linux/bash/logfile_for_cron_job
#	the above command apeend to logfile_for_cron_job when ever the system is booted
