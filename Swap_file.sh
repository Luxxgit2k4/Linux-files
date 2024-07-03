
sudo swapoff /swapfile

sudo fallocate -l 4G /swapfile

sudo dd if=/dev/zero bs=1M count=2048 >> /swapfile

sudo mkswap /swapfile

sudo swapon --show

free -h

/swapfile none swap sw 0 0
