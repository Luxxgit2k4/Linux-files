#!/bin/bash

# Disk usage threshold percentage
THRESHOLD=80

# Get the disk usage percentage of the root partition
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Compare usage with threshold
if [ $USAGE -gt $THRESHOLD ]; then
  echo "Warning: Disk usage is above $THRESHOLD%. Current usage is $USAGE%."
else
  echo "Disk usage is under control. Current usage is $USAGE%."
fi

#To run this file enter bash your_filename.sh
