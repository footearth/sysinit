# Manjaro

```powershell
>> docker pull manjarolinux/base
>> docker run -ti --name manjaro manjarolinux/base /bin/bash
>> docker export 
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
