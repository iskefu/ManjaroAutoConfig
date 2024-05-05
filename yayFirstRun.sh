## Ventoy
yay  -S Ventoy --noconfirm

# conda
yay -S miniconda3 --noconfirm
echo "if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh" >> /home/$(logname)/.zshrc
source ~/.zshrc
# sudo echo /home/$(logname)/.zshrc

yay -S google-chrome --noconfirm