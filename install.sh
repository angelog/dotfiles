#!/bin/bash

# Install zsh
if [ -x "$(command -v sudo)" ]; then
	sudo apt-get update
	sudo apt-get install zsh git curl tmux vim
else
	apt-get update
	apt-get install zsh git curl tmux vim
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" sh --unattended

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install all dotfiles
./install-dotfiles.sh

printf "\n=====================\n\nDone! 🥰\n\n"
printf "You might want to do the following:\n"
printf "  1. Run tmux and press Ctrl+A, Shift+I to install tmux plugins.\n"
printf "  2. Run vim and type :PlugInstall to install vim plugins.\n"
printf "  3. Change your shell to zsh with chsh, and use the following\n"
printf "     binary path: $(which zsh)\n\n"
