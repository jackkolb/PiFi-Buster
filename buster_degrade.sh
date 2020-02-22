#!/bin/sh
# temporary fix for WPA Enterprise on Raspbian Buster, connect Ethernet before running
# stolen from https://lb.raspberrypi.org/forums/viewtopic.php?t=244731

sudo apt-get remove wpasupplicant -y
sudo mv -f /etc/apt/sources.list /etc/apt/sources.list.bak
sudo bash -c "echo 'deb http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi' > /etc/apt/sources.list"
sudo apt-get update
sudo apt-get install wpasupplicant -y
sudo apt-mark hold wpasupplicant
sudo cp -f /etc/apt/sources.list.bak /etc/apt/sources.list
sudo apt-get update
