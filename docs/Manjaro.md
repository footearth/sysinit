# Manjaro

```powershell
>> docker pull manjarolinux/base
>> docker run -ti --name manjaro manjarolinux/base /bin/bash
>> docker export -o ./Manjaro.tar manjarolinux/base
>> wsl --import Manjaro ./ManjaroWSL2 ./Manjaro.tar
```

```sh
>> useradd -m $user
>> passwd $user
>> echo '$user ALL=(ALL) NOPASSWD: ALL' > $user
>> chmod 440 $user
>> mv $user /etc/sudoers.d
```

## manjaro mirror

edit /etc/pacman.d/mirrorlist

```sh
>> sudo pacman-mirrors -i -c China -m rank -g
```

- 中科大
    - https://mirrors.ustc.edu.cn/manjaro/stable/$repo/$arch
- 清华大学
    - https://mirrors.tuna.tsinghua.edu.cn/manjaro/stable/$repo/$arch
- 上海交通大学
    - https://mirrors.sjtug.sjtu.edu.cn/manjaro/stable/$repo/$arch
- 浙江大学
    - https://mirrors.zju.edu.cn/manjaro/stable/$repo/$arch

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

## XDG_RUNTIME_DIR

```sh
>> sudo chown -R $USER:$USER /run/user/$(id -u $USER)
```
