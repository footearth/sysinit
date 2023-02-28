#!/usr/bin/env bash

sudo pacman -Syy

yes | sudo pacman -S yay

# yay --aururl "https://aur.tuna.tsinghua.edu.cn" --save

yes | yay -S go-task-bin
sudo ln -s /usr/bin/go-task /usr/bin/task
