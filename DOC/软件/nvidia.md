```bash

sudo pacman -Syu
lspci -vnn | grep VGA # see driver information
# download driver from official website 
uname -r # see kernel version and install 
sudo pacman -S base-devel dkms --noconfirm # install development tools

sudo pacman -S linux66-headers --noconfirm # install headers for kernel version
# set up grub 
sudo nano /etc/default/grub 
# modify the line to include the following: 
# GRUB_CMDLINE_LINUX="nouveau.modeset=0"  


sudo update-grub
reboot

sudo ./NVIDIA-Linux-*.run
reboot
```
