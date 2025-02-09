#!/bin/bash

# Title
figlet -f slant NETinfo && sleep 1

##
echo "NETWORK INTERFACES:"
ip a
echo " " && sleep 1
ifconfig
echo " " && sleep 1
iwconfig
echo " " && sleep 1
##

##
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "ROUTE:"
route && echo " " && route -n
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 1
##

##
echo "NETDISCOVER:"

echo "Enter Net IP (e.g. 192.168.1.0/24):"
read ip_range


echo "Enter interface (e.g. wlan0):"
read interface

sudo arp-scan --interface=$interface $ip_range
sudo arp -a
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 1
##

# WiFi show
echo "WIFI:"
nmcli dev wifi
sleep 1
