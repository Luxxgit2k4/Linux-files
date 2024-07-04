#This is a script to know,how much of your storage is full.
# When you run it ,it gives you a warning if the storage is exceeding the percentage you mentioned in the script or it gives its under control

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
