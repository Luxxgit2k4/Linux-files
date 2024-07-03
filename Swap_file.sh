#To turn off existing swap file 
sudo swapoff /swapfile
#Allocating the swap file memory to 4gb 
sudo fallocate -l 4G /swapfile
#If fallocate doesn't work use dd to extend the space
sudo dd if=/dev/zero bs=1M count=2048 >> /swapfile
#Recreate the swap space
sudo mkswap /swapfile
#Turn on the swap file
sudo swapon /swapfile
#To check the swap file has 4gb memory
sudo swapon --show
#you can also use this command to check
free -h
#To Make Sure the Swap File Entry is in /etc/fstab
#Verify or add the following line to /etc/fstab. 
/swapfile none swap sw 0 0
#If it’s already there, you don’t need to add it again.
