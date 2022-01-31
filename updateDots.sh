#!/bin/bash

update_zsh() {
	# update zsh source
	cp -r ~/.zshrc ./.zshrc
}

update_nvim() {
	# Update nvim
	sudo rm -rf autoload
	cp -r ~/.config/nvim/autoload .

	sudo rm -rf coc-settings.json
	cp -r ~/.config/nvim/coc-settings.json .

	sudo rm -rf config
	cp -r ~/.config/nvim/config .

	sudo rm -rf init.vim
	cp -r ~/.config/nvim/init.vim .
}

update_tmux() {
	# Update TMUX and Tmuxinator
	sudo rm -rf tmuxinator
	cp -r ~/.config/tmuxinator .

	sudo rm -rf .tmux.conf
	cp -r ~/.tmux.conf .
}


update_dots() {
	if [[ $1 == "zsh" ]]
	then
		update_zsh
		echo "Zsh configs updated"
	elif [[ $1 == "nvim" ]]
	then
		update_nvim
		echo "Neovim configs updated"
	elif [[ $1 == "tmux" ]]
	then
		update_tmux
		echo "Tmux configs updated"
	else
		update_zsh
		update_nvim
		update_tmux
		echo "All configs updated"
	fi
}

update_dots $1
