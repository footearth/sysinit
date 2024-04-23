# Arch

### wsl.conf

/etc/wsl.conf
```toml
[user]
default = footearth
```

~/.bashrc
```bash
source ~/.profile
```

~/.profile
```bash
cd ~
```

### archlinux mirror

```sh
>> curl -s https://archlinux.org/mirrorlist/?country=CN | sed 's/^#Server/Server/g' | sudo tee /etc/pacman.d/mirrorlist

sudo wget -O /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/?country=CN
sudo curl -O /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/?country=CN
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
>> sudo pacman -Sy archlinux-keyring
>> sudo pacman -Sy archlinuxcn-keyring
>> sudo pacman -Su
```

## systemd

- 安装

```sh
>> echo -e "[boot]\nsystemd=true" | sudo tee -a /etc/wsl.conf
```

- 检查

```sh
>> ps --no-headers -o comm 1

>> systemctl list-units --type=service
>> systemctl list-unit-files --type=service --state=enabled
```

## podman

```
>> sudo touch /etc/sub{u, g}id

>> USER=(whoami) subid=/etc/subuid sudo bash -lc "echo '$USER:100000:65536' > $subid"
>> USER=(whoami) subid=/etc/subgid sudo bash -lc "echo '$USER:100000:65536' > $subid"

>> sudo usermod --add-subuids 10000-75535 <your-username>
>> sudo usermod --add-subgids 10000-75535 <your-username>
# or
>> echo <your-username>:10000:65536 >> /etc/subuid
>> echo <your-username>:10000:65536 >> /etc/subgid

>> sudo chmod 4755 /usr/bin/newgidmap
>> sudo chmod 4755 /usr/bin/newuidmap
```
