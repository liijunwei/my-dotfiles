#!/bin/zsh
echo 'Download dot-files from https://raw.githubusercontent.com/xiaolai/my-dotfiles/ ...'
echo
cd $HOME
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.aliases --output .aliases --silent
echo '.aliases put into the place'
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.functions --output .functions --silent
echo '.functions put into the place'
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.zshrc --output .zshrc --silent
echo '.zshrc put into the place'
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.zprofile --output .zprofile --silent
echo '.zprofile put into the place'
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.gitignore_global --output .gitignore_global --silent
echo '.gitignore_global put into the place'
curl https://raw.githubusercontent.com/xiaolai/my-dotfiles/master/.gitconfig --output .gitconfig --silent
echo '.gitconfig put into the place'
echo
echo 'Installation Completed!'