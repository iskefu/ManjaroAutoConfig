 # 排列源
sudo pacman-mirrors -i -c China -m rank


# 更新源列表
sudo pacman -Syy --noconfirm

# 增加cn仓库
sudo echo "[archlinuxcn]
SigLevel = Optional TrustAll
Server = https://mirrors.aliyun.com/archlinuxcn/\$arch" >> /etc/pacman.conf
# sudo nano /etc/pacman.conf

# 安装 archlinuxcn 签名钥匙 & antergos 签名钥匙
sudo pacman -Sy archlinuxcn-keyring haveged --noconfirm
sudo systemctl enable haveged
sudo pacman-key --init
sudo pacman-key --populate manjaro 
sudo pacman-key --populate archlinux
sudo pacman-key --populate archlinuxcn

# 升级系统
sudo pacman -Syyu --noconfirm


# Sudo 免密码
sudo echo "Defaults:$(logname) !authenticate" >> /etc/sudoers
# sudo nano /etc/sudoers


# 安装yay
sudo pacman -S yay --noconfirm

# install 输入法
yay -S manjaro-asian-input-support-fcitx5 fcitx5 fcitx5-configtool fcitx5-chinese-addons fcitx5-qt fcitx5-gtk --noconfirm
echo 'export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export LANG="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"'  >>  ~/.xprofile
# nano ~/.xprofile

yay -S latte-dock --noconfirm



sudo pacman -S obsidian --noconfirm

# Install Visual Studio Code
yay -S visual-studio-code-bin --noconfirm

## Sublime text
yay -S sublime-text-4 --noconfirm
# Shift+Ctrl+P
# Install Package
# ChineseLocalizations

## syncthing
yay -S syncthing --noconfirm

# uget
sudo pacman -S uget aria2 --noconfirm

## Kdenlive
yay -S kdenlive --noconfirm

## Telegram
yay -S telegram-desktop --noconfirm

## OBS Studio
sudo pacman -S obs-studio --noconfirm

## Google Chrome
yay -S google-chrome  --noconfirm     

## Ventoy
yay -S Ventoy --noconfirm

## ffmpeg
yay -S ffmpeg --noconfirm


# 终端代理 proxychains
sudo pacman -S proxychains-ng --noconfirm
sudo sed -i '$d' /etc/proxychains.conf
sudo sed -i '$d' /etc/proxychains.conf
sudo echo "socks4 192.168.43.1 1080" >>  /etc/proxychains.conf
# cat /etc/proxychains.conf


# docker
sudo pacman -S docker --noconfirm
sudo systemctl start docker.service 
sudo systemctl enable docker.service
sudo usermod -aG docker  $(logname)

# conda
yay -S miniconda3 --noconfirm
echo "if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh" >> /home/$(logname)/.zshrc
source ~/.zshrc
# sudo echo /home/$(logname)/.zshrc





