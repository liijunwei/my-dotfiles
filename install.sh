#!/bin/zsh

rsync .aliases $HOME/.aliases
rsync .functions $HOME/.functions
rsync .zshrc $HOME/.zshrc
rsync .zprofile $HOME/.zprofile
rsync .gitignore_global $HOME/.gitignore_global
rsync .gitconfig $HOME/.gitconfig
rsync .jupyter/jupyter_lab_config.py $HOME/.jupyter/jupyter_lab_config.py

echo 'Installation Completed!'