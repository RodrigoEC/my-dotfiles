
#!/bin/bash

update_zsh() {
	# update zsh source
	cp -r ./.zshrc ~/.zshrc
}

update_nvim() {
	# Update nvim
	cp -r autoload ~/.config/nvim/autoload
	cp -r coc-settings.json ~/.config/nvim/coc-settings.json
	cp -r config ~/.config/nvim/config
	cp -r init.vim ~/.config/nvim/init.vim
}

update_tmux() {
	# Update TMUX and Tmuxinator
	cp -r tmuxinator ~/.config/tmuxinator
	cp -r .tmux.conf ~/.tmux.conf
}


update_dots() {
	if [[ $1 == "zsh" ]]
	then
		update_zsh
		echo "Zsh configs updated locally"
	elif [[ $1 == "nvim" ]]
	then
		update_nvim
		echo "Neovim configs updated locally"
	elif [[ $1 == "tmux" ]]
	then
		update_tmux
		echo "Tmux configs updated locally"
	else
		update_zsh
		update_nvim
		update_tmux
		echo "All configs updated locally"
	fi
}

update_dots $1
