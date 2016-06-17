#!/bin/bash
#
# Copyright � 2016, Ryan Woodcock "ryanguy426" <ryanguy426@gmail.com>
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#
agree1=""
agree2=""
gitemail=""
gitusername=""
question=""
clear

echo "======================================================
|This script is designed to be run on Ubuntu 14.04.x.|
|If you run this on a newer version, expect issues.  |
======================================================"
echo ""
echo "Type 'Yes' if you understand, and/or are on 14.04.x."
read agree1

if [ $agree1 = Yes ]
        then echo ""
		echo "This software is licensed under the terms of the GNU General Public
License version 2, as published by the Free Software Foundation, and
may be copied, distributed, and modified under those terms.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details."
		echo ""
		echo "Type 'Agree' to continue."
        else exit
fi
read agree2
		if [ $agree2 == Agree ]
        		then echo "======================================================="
			     echo "|Installing Dependencies. This may take a few minutes.|"
			     echo "======================================================="
        		else exit
		fi
{
	sudo apt-get update
	sudo apt-get -y install openjdk-7-jdk git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils xsltproc unzip
} &> /dev/null
echo ""
echo ""
echo "============================"
echo "|Installing Repo command...|"
echo "============================"
{
	sudo mkdir ~/bin
	sudo curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	sudo chmod a+x ~/bin/repo
	sudo chown -R $USER ~/bin/repo
	sed -i '$a export PATH=~/bin:$PATH' ~/.bashrc
} &> /dev/null
echo "==============================================="
echo "|Repo command installed. Directory: ~/bin/repo|"
echo "==============================================="
echo ""
echo ""
echo "====================================================================="
echo "|Configuring Git. Please type the email you want associated with it.|"
echo "====================================================================="
read gitemail
{
	git config --global user.email "$gitemail"
} &> /dev/null
echo ""
echo "========================================================"
echo "|Please type the username you want associated with Git.|"
echo "========================================================"
read gitusername
{
	git config --global user.name "$gitusername"
} &> /dev/null
echo ""
echo "======================="
echo "|Done configuring Git.|"
echo "======================="
echo ""
echo ""
echo "============================================"
echo "|Creating directory to download source code|"
echo "============================================"
echo ""
{
sudo mkdir ~/CleanWhale
sudo chown -R $USER ~/CleanWhale
} &> /dev/null
echo "==========================================="
echo "|Directory created. Location: ~/CleanWhale|"
echo "==========================================="
echo ""
echo ""
echo "====================================================================="
echo "|Your system should now be set up with the files                    |"
echo "|neccessary to run an Android build. To get started,                |"
echo "|close ALL terminal windows, open it back up, and                   |"
echo "|run the following commands in order:                               |"
echo "|* cd ~/CleanWhale                                                  |"
echo "|* repo init -u https://github.com/CleanWhale/android.git           |"
echo "|* repo sync                                                        |"
echo "|                                                                   |"
echo "|Note that downloading the Android source code can                  |"
echo "|take anywhere from 30 minutes, up to several hours                 |"
echo "|depending on your internet speed.                                  |"
echo "====================================================================="
exit
