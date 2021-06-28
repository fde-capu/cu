#!/bin/sh

# Before running this script
# sudo problem
#su -
#sudo usermod -aG sudo fde-capu
#>log out, log in

# /etc/apt/sources.list
#add "contrib non-free" to main deb and deb-src on /etc/apt/sources.list

# setup audio input and output devices manually

#use `sudo blkid | grep Win10` to find the "Win10 SSD" info
#add to /etc/fstab - note UUID and filesystem TYPE, all separate by tabs
#UUID=5ADA887DDA8856E3	/win	ntfs	rw,user,exec,umask=000 	0	2
#add to /etc/hosts: `127.0.0.1	pik` 

# Mouse natural Scroll
# sudo vim /usr/share/X11/xorg.conf.d/40-libinput.conf
# > put line on "pointer" block before driver:
# Option "NaturalScrolling" "on"
# Then restart X:
# sudo systemctl restart display-manager.service

# change /usr/share/guake/data/guake.glade :
# <property name="skip_taskbar_hint">False</property>

# Cinnamon applets reinstall (GUI):
# CPU Frequency Applet

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
sudo apt -y upgrade
sudo apt -y install linux-headers-amd64 && sudo apt install -y nvidia-driver
sudo apt -y install vim chromium git guake redshift xfce4-terminal
sudo apt -y install ffmpeg blender krita vlc asymptote feh 
sudo apt -y install obs-studio
sudo apt -y install filezilla links
sudo apt -y install nload neofetch unclutter ncdu
sudo apt -y install clang valgrind
sudo apt -y install python3-venv python3-pip

sudo apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt -y install docker-ce
sudo usermod -aG docker fde-capu
su - fde-capu

sudo mkdir -p /win

sudo apt -y install lshw sshfs
sudo apt -y install wmctrl
sudo apt -y install simplescreenrecorder

sudo apt -y install nasm

sudo apt -y install audacity easytag paprefs pavucontrol

# 42 (might run into issues, better do it manually):
#sudo apt install ruby ruby-bundler ruby-dev build-essential
#source ~/.profile




#deb http://download.virtualbox.org/virtualbox/debian buster contrib
#wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
#sudo apt-key add oracle_vbox_2016.asc
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#sudo apt update
#sudo apt install virtualbox-6.1



# manual install:
# discord: https://discordapp.com/api/download?platform=linux&format=deb
# zoom: https://zoom.us/download?os=linux
# add ~/_/cu/fde-capu_x-startup.sh to X Startup Apps

#Cinnamon:
# Extension: Maximus
# QRedShift



# NOTE: These instructions only work for 64 bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.

# 1. Install our official public software signing key
#wget -O- https://updates.signal.org/desktop/apt/keys.asc |  sudo apt-key add -

# 2. Add our repository to your list of repositories
#echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" |  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install signal
#sudo apt update && sudo apt install signal-desktop

# line-in into line-out
# pacmd load-module module-loopback

#sudo reboot
