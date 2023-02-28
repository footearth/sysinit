#!/usr/bin/env bash

sudo wget -O /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/?country=CN

sudo sed -i -e 's/^#Server =/Server =/g' /etc/pacman.d/mirrorlist
sudo sed -i -e '$ a\
\
[archlinuxcn]\
SigLevel = Optional TrustedOnly\
\
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch\
\
Server = http://mirrors.163.com/archlinux-cn/\$arch\
Server = https://mirrors.aliyun.com/archlinuxcn/\$arch\
\
Server = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch\
Server = https://mirrors.bupt.edu.cn/archlinuxcn/\$arch\
Server = http://repo.archlinuxcn.org/\$arch
' /etc/pacman.conf

sudo pacman -Syy

yes | sudo pacman -S archlinuxcn-keyring
