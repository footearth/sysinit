# Arch

### archlinux mirror

```sh
>> sudo wget -O /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/?country=CN

rankmirrors -n 6 mirrorlist.backup > mirrorlist

reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist
```
### archlinuxcn mirror

edit /etc/pacman.conf

- http://repo.archlinuxcn.org/$arch

- http://mirrors.163.com/archlinux-cn/$arch
- https://mirrors.aliyun.com/archlinuxcn/$arch

- https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
- https://mirrors.ustc.edu.cn/archlinuxcn/$arch
- https://mirrors.bupt.edu.cn/archlinuxcn/$arch


```sh
[archlinuxcn]
SigLevel = Optional TrustedOnly

Server = http://mirrors.163.com/archlinux-cn/$arch
```

```sh
>> sudo pacman -Syy
>> sudo pacman -S archlinuxcn-keyring
```
