#!/bin/bash

#if [ -d /etc/pacman.d ]
#then
#	#the host is based on Arch, run the pacman update command
#	sudo pacman -Syu
#fi
#
#if [ -d /etc/apt ]
#then
#	#the host is based on Debian or Ubuntu run apt vertsion of the command
#	sudo apt update
#	sudo apt dist-upgrade
#fi

#release_file=/etc/os-release
#
#if grep -q "Arch" $release_file
#then
#	#the host is based on Arch, run the pacman update command
#	sudo pacman -Syu
#fi
#
#if grep -q "Debian" $release_file
#then
#        #the host is based on Deebian run apt vertsion of the command
#        sudo apt update
#        sudo apt dist-upgrade
#fi
#
#if grep -q "Ubuntu" $release_file
#then
#	#the host is based on Ubuntu run apt vertsion of the command
#	sudo apt update
#	sudo apt dist-upgrade
#fi

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
       #the host is based on Arch, run the pacman update command
       sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
        #the host is based on Debian or Ubuntu run apt vertsion of the command
        sudo apt update
        sudo apt dist-upgrade
fi








#topic
#sudo apt dist-upgrade is the advance version of sudo apt update

#sudo apt update: This command updates your local package index with the latest available package information from the repositories. It doesn’t install or upgrade any packages yet, but it makes sure that your system is aware of the latest versions.

#sudo apt dist-upgrade: This command not only upgrades the installed packages to their latest versions but also handles dependencies and can install or remove packages as necessary to complete the upgrade. It’s more thorough than a regular `sudo apt upgrade`, which only upgrades the installed packages without changing the installed set of packages.

#
