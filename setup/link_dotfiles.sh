#!/bin/bash

# zshrc
if [ -f ~/.zshrc ]; then
	rm ~/.zshrc
fi
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# tmux
if [ -f ~/.config/tmux/tmux.conf ]; then
	rm ~/.config/tmux/tmux.conf
fi
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# aliases
ln ~/dotfiles/aliases/* ~/.oh-my-zsh/custom/
