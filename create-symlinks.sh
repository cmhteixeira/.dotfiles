#!/bin/bash
# Based on https://github.com/mattjmorrison/dotfiles/blob/master/install-scripts/Linux/create-symlinks.sh

#==============
# Variables
#==============
#dotfiles_dir=~/dotfiles
#log_file=~/install_progress_log.txt
# Determines the parent folder of this installation script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#==============
# Delete existing dot files and folders
#==============
#sudo rm -rf ~/bashrc > /dev/null 2>&1
#sudo rm -rf ~/.vim > /dev/null 2>&1
#sudo rm -rf ~/.vim > /dev/null 2>&1
#sudo rm -rf ~/.vim > /dev/null 2>&1
#sudo rm -rf ~/.vimrc > /dev/null 2>&1
#sudo rm -rf ~/bashrc > /dev/null 2>&1
#sudo rm -rf ~/.tmux > /dev/null 2>&1
#sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
#sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
#sudo rm -rf ~/.zshrc > /dev/null 2>&1
#sudo rm -rf ~/.gitconfig > /dev/null 2>&1
#sudo rm -rf ~/.antigen > /dev/null 2>&1
#sudo rm -rf ~/.antigen.zsh > /dev/null 2>&1
#sudo rm -rf ~/.psqlrc > /dev/null 2>&1
#sudo rm -rf ~/.tigrc > /dev/null 2>&1
#sudo rm -rf ~/.config > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
#ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $script_dir/bashrc ~/.bashrc
ln -sf $script_dir/bash_aliases ~/.bash_aliases
ln -sf $script_dir/git_prompt.sh ~/.git_prompt.sh
#ln -sf $dotfiles_dir/linux-tmux ~/.tmux
#ln -sf $dotfiles_dir/zsh/zsh_prompt ~/.zsh_prompt
#ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc
#ln -sf $dotfiles_dir/config ~/.config
#ln -sf $dotfiles_dir/custom-configs/custom-snips ~/.vim/custom-snips

#if [ -n "$(find $dotfiles_dir/custom-configs -name gitconfig)" ]; then
#    ln -s $dotfiles_dir/custom-configs/**/gitconfig ~/.gitconfig
#else
#    ln -s $dotfiles_dir/gitconfig ~/.gitconfig
#fi
#
#if [ -n "$(find $dotfiles_dir/custom-configs -name tmux.conf)" ]; then
#    ln -s $dotfiles_dir/custom-configs/**/tmux.conf ~/.tmux.conf
#else
#    ln -s $dotfiles_dir/linux-tmux/tmux.conf ~/.tmux.conf
#fi
#
#if [ -n "$(find $dotfiles_dir/custom-configs -name tigrc)" ]; then
#    ln -s $dotfiles_dir/custom-configs/**/tigrc ~/.tigrc
#else
#    ln -s $dotfiles_dir/tigrc ~/.tigrc
#fi
#
#if [ -n "$(find $dotfiles_dir/custom-configs -name psqlrc)" ]; then
#    ln -s $dotfiles_dir/custom-configs/**/psqlrc ~/.psqlrc
#else
#    ln -s $dotfiles_dir/psqlrc ~/.psqlrc
#fi

#==============
# Set zsh as the default shell
#==============
#sudo chsh -s /bin/zsh

#==============
# Give the user a summary of what has been installed
#==============
#echo -e "\n====== Summary ======\n"
#cat $log_file
#echo
#echo "Enjoy -Jarrod"
#rm $log_file