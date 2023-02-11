#!/bin/bash

# Check If you are not root
if (( $EUID != 0 )); then       
    echo "Usage: sudo ./install.sh"

else
# Install deb lib
sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free 
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" >/etc/apt/sources.list

# Update the lib
apt update
apt upgrade -y
apt update

# Install Python requiremnts
apt install python3 -y
apt install python3-pip -y

# Install git
apt install git -y

# Install gedit
apt install gedit -y

# Install the lib
git clone https://github.com/Datalux/Osintgram.git

# Install Python libs
pip3 install geopy
pip3 install instagram_private_api 
pip3 install pyreadline
pip3 install gnureadline


# Go to Osintgram file
cd Osintgram/

# Donwload the requirments
pip3 install -r requirements.txt

# Enter Config File
cd config/

# Delete settings.json
rm settings.json

# Change to root
sudo su

fi
