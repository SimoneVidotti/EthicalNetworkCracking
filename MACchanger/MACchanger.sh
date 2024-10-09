#!/bin/bash

# Title
figlet -f slant MAC-CHANGER

# [INPUT] > Define the network interface (e.g. eth0, wlan0, etc.)
read -p "(Ex:wlan0)Enter your network interface name: " INTERFACE

sudo ifconfig $INTERFACE down

# Use macchanger to change the MAC address to a random value
sudo macchanger -r $INTERFACE

sudo ifconfig $INTERFACE up

# Print a success message
echo "MAC address changed to a random value on $INTERFACE"
