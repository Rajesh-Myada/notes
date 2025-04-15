#!/bin/bash

echo "This script ran at following time : $(date)" >> logfile_for_scheduling_jobs






#Scheduling jobs
#Scheduling jobs are used to schedule the commands at certion time and run even without user present there to run
#Scheduling jobs can be done in two ways
#	by using "at" command
#	by
#To use "at" command on system, install the "at" utility
#to check if "at" is there on system or not use "which at"
#To install at use "sudo apt install at"
#To schedule a job at certain time by using "at" command is done as
#	at <military_time [Date]> -f <file_path/file_name>
#	at 14:13 -f test_file_for_scheduling_jobs.sh
#To see which jobs are at queue use command "atq"
#	atq
#Command "atq" displays "job_id at DateTime"
#To cancel/delete the job use command "atrm <job_id>"
#	atrm 2
#
#
