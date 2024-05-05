---
created: '2024-05-06 '
---
# 备份

```bash
echo "/proc
/sys
/dev
/tmp
/run
/home" > exclude.txt
sudo tar -cvpzf manjaroBackup.tar.gz --exclude-from=exclude.txt /
sudo tar -cvpzf manjaroHomeBackup.tar.gz /home
```

# 还原
**Boot from Live CD/USB**
```sh

sudo mount /dev/sda2 /mnt

tar -xxpzf manjaroBackup.tar.gz -C /mnt

tar -xxpzf manjaroHomeBackup.tar.gz -C /mnt/home

# **Reconfigure the Bootloader**

for dir in /dev /dev/pts /proc /sys /run; do sudo mount --bind $dir /mnt$dir; done
    sudo chroot /mnt
    grub-install /dev/sda
    update-grub
```

