#!/bin/bash

# Set the interval to 1 minute
INTERVAL=60

# Initialize the counter
COUNT=0

# clear screen
clear

while true
do
  # Restart TOR to change the IP address
  sudo service tor restart

  # Increment the counter
  COUNT=$((COUNT + 1))

  # Print the counter and new IP address to the screen
  echo "IP address changed"
  echo "Counter: $COUNT"
  echo "- - - - - - - - - - - - - - - - - - - -"

  # Wait for the interval
  sleep $INTERVAL
done
