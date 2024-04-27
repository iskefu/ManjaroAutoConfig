---
created: 2024-04-03
---

# Manjaro nvidia

## 自动安装

```
sudo mhwd -a pci nonfree 0300

sudo reboot

nvidia-settings
```

## 手动安装

```
sudo pacman -Syu

lspci -vnn | grep VGA
# 官网下载驱动
uname -r

sudo pacman -S linux66-headers

sudo pacman -S base-devel dkms

sudo nano /etc/default/grub

GRUB_CMDLINE_LINUX="nouveau.modeset=0"


sudo update-grub


reboot

sudo ./NVIDIA-Linux-*.run

reboot

```
