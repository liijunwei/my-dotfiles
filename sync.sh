#!/bin/zsh

rsync $HOME/.aliases .aliases
rsync $HOME/.functions .functions
rsync $HOME/.zshrc .zshrc
rsync $HOME/.zprofile .zprofile
rsync $HOME/.gitignore_global .gitignore_global
rsync $HOME/.gitconfig .gitconfig
rsync $HOME/.jupyter/jupyter_lab_config.py .jupyter/jupyter_lab_config.py

echo 'Sync Completed!'