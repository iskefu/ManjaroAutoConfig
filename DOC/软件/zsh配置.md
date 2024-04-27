---
created: 2024-04-03
---

# ohmyzsh

```zsh
sh -c "$(curl -fsSL https://install.ohmyz.sh)"

kate ~/.zshrc

ZSH_THEME="random"

source ~/.zshrc



```

# zsh插件

```zsh

incr.zsh 补全插件

	cd ~/.oh-my-zsh/plugins/
	
	mkdir incr
	
	cd incr
	
	wget http://mimosa-pudica.net/src/incr-0.2.zsh   
	
	kate ~/.zshrc
	
	source ~/.oh-my-zsh/plugins/incr/incr*.zsh
	
	source ~/.zshrc  
	
zsh-autosuggestions

	sudo pacman -S zsh-autosuggestions
	
	kate ~/.zshrc
	
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	
	source ~/.zshrc 

zsh-syntax-highlighting

	sudo pacman -S zsh-syntax-highlighting
	
	kate ~/.zshrc
	
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	
	source ~/.zshrc
	
z

	plugin(z   themes     cp  command-not-found  colored-man-pages   sudo   history-substring-search )



```

# Zsh主题

```zsh

zsh-theme-powerlevel10k


sudo pacman -S zsh-theme-powerlevel10k

kate ~/.zshrc

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


source ~/.zshrc
```

# zsh配置

```zsh
bindkey '^[[1;5D' backward-word 和 bindkey '^[[1;5C' forward-word：将 Ctrl+左箭头和 Ctrl+右箭头绑定到向前和向后移动一个单词的命令上。]]

# 使用 ctrl + space 快捷键直接执行当前 zsh 提示
bindkey '^ ' autosuggest-accept

bindkey '^M' autosuggest-execute



```
