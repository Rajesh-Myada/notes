#!/bin/bash

#To make sure the user has entered exactly two arguments.
if [ $# -ne 2 ]
then
	echo "Usage: backup_script.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1
fi

#Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
	echo "The script requires rsync to be installed."
	echo "Please use your distribution's package manager to install it and try again."
	exit 2
fi

#Capture the current date and store it in formate of YYYY-MMM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete" # --dry-run"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
echo "----------------------------------------------------------------------------" >> backup_$current_date.log


#Backup
#The first if statement is there to make sure the user has entered exactly two arguments, not less or more
#If arguments are not equal to 2 then it echo two messages and gives exit 1
#The secound if statement is there to check to see if rsync is installed or not, if not it echo two messages and gives exit code 2
#the line "current_date=$(date +%Y-%m-%d)" is there to store the current date, it stores in formate of YYYY-MMM-DD
#the line 'rsync_options="-avb --backup-dir $2/current_date --delete" # --dry-run"' stores the required options of rsync
#rsync options
#	1. -a (archive mode): This is shorthand for "archive" mode. It’s actually a combination of several options:
#		-r → recursive (copies directories)
#		-l → copy symlinks as symlinks
#		-p → preserve file permissions
#		-t → preserve modification times
#		-g → preserve group
#		-o → preserve owner (only works if you're the superuser)
#		-D → preserve device files (for superusers)
#	So, -a ensures all the important file attributes (permissions, timestamps, etc.) are preserved while copying.
#	2. -v (verbose): This makes rsync more talkative.
#		It will display detailed output of what’s happening during the transfer, like which files are being copied, deleted, etc. This can be useful for troubleshooting or monitoring progress.
#	3. -b (backup): This tells rsync to make a backup of any files that are being overwritten.
#		By default, it’ll add a ~ to the end of any overwritten files.
#		For example, if file1.txt is being replaced, rsync will create a backup called file1.txt~.
#	4. --backup-dir $2/current_date
#		Function: This specifies where the backups should be stored when -b is used.
#		The $2 variable is a placeholder for the second argument passed to the script (this could be a directory path).
#		$2/current_date will be the target directory for backups (presumably you are passing a path like /backup/2025-04-16).
#		This allows you to keep backups in a separate location, organized by date, rather than leaving them scattered in the source directory.
#	5. --delete: This tells rsync to delete files in the destination that no longer exist in the source directory.
#		Be cautious with this one — it’s powerful because it makes the destination mirror the source by removing extraneous files.
#		For example, if you deleted a file from the source directory, this option ensures it’s deleted from the destination as well.
#	--dry-run: This makes rsync perform a simulation of the command without actually making any changes.
#		It's super useful for testing because it shows you what would happen if you ran the command without actually doing anything (no copying or deleting).
#		It’s basically a preview mode that gives you peace of mind before committing to the operation.
#	Summary:
#	-a: Archive mode (preserves file attributes)
#	-v: Verbose output (shows what’s happening)
#	-b: Backup files that are overwritten
#	--backup-dir $2/current_date: Save backups to the $2/$current_date directory
#	--delete: Delete files in the destination that are no longer in the source
#	--dry-run: Simulate the command, no actual changes.
#dry-run option is like demo mode it runs the command without changing anything, there is output in backup_$current_date.log which is similar actual output.
#the line "$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log" is where the actual backup take place
#	$(which rsync): find the full path of the rsync executable
#		$(): is subshell it runs the command inside the parentheses and then substitutes by its output
#	$rsync_options: it a shell variable that holds the options that have been defined earlier for rsync
#	$1 $2/current: it is source and target directiory location of backup
#		$1: source directiory
#		$2/current: targect directiory
#	>> backup_$current_date.log": takes the output of the command on the left and appends it to the backup_$current_date.log
#
#The above script takes the backup from $1 to $2 (source to target) and the original file which are modified are also kept in seperate dir, the current dir has same file as that of dir which was backedup.

#For this script i created a "pictures" dir and copied some files, and created "backup" dir to backup the files in "pictures".
#The command which i executed is "bash backup_script pictures/ backup"
#
#Command				| Behavior					| Description
#bash backup_script.sh picture backup 	|Copies picture contents into backup/		| Copies the contents of picture into the backup directory.
#bash backup_script.sh picture/ backup/ |Same as above,but with explicit directory intent| Same as the first command, just with trailing slashes for clarity.
#bash backup_script.sh picture backup/ 	|Copies picture contents directly into backup/	| Flattens the picture directory’s contents into backup/ (no subdir).
#bash backup_script.sh picture/ backup 	|Copies picture directory into backup/		| Copies the entire picture directory (with contents) into backup/ as a subdir.
#
#Command	: bash backup_script.sh picture backup
#Behavior	: Copies picture contents into backup/
#Description	: Copies the contents of picture into the backup directory.

#Command        : bash backup_script.sh picture/ backup/
#Behavior       : Same as above,but with explicit directory intent
#Description	: Same as the first command, just with trailing slashes for clarity.

#Command        : bash backup_script.sh picture backup/
#Behavior       : Copies picture contents directly into backup/
#Description    : Flattens the picture directory’s contents into backup/ (no subdir).

#Command        : bash backup_script.sh picture/ backup
#Behavior       : Copies picture directory into backup/
#Description    : Copies the entire picture directory (with contents) into backup/ as a subdir.

