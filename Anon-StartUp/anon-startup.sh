#!/bin/bash

# Title
figlet -f slant AnonStartUp

echo "[Mac-changer]"

# [INPUT] > Define the network interface (e.g. eth0, wlan0, etc.)
read -p "(Ex:wlan0)Enter your network interface name: " INTERFACE

sudo ifconfig $INTERFACE down

# Use macchanger to change the MAC address to a random value
sudo macchanger -r $INTERFACE

sudo ifconfig $INTERFACE up

# Print a success message
echo "MAC address changed to a random value on $INTERFACE"

echo "[Hostname-changer]"

# Definisci una lista di nomi host
NOME_HOST_LIST=("pc4" "archer" "xyz" "cube" "anon")

# Seleziona un nome host casuale dalla lista
NOME_HOST=${NOME_HOST_LIST[RANDOM % ${#NOME_HOST_LIST[@]}]}

# Imposta il nuovo nome host
sudo hostnamectl set-hostname "$NOME_HOST"

hostname
