#!/bin/bash

# Title
figlet -f slant NETinfo && sleep 1

##
echo "NETWORK INTERFACES:"
ip a
echo " " && sleep 2
ifconfig
echo " " && sleep 2
iwconfig
echo " " && sleep 2
##

##
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "ROUTE:"
route && echo " " && route -n
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 2
##

# WiFi show
nmcli dev wifi
