# Scoop

## 安装

- https://github.com/scoopinstaller/install/blob/master/install.ps1
- https://raw.githubusercontent.com/scoopinstaller/install/refs/heads/master/install.ps1

- https://gh-proxy.com/https://github.com/scoopinstaller/install/blob/master/install.ps1
- https://gh-proxy.com/https://raw.githubusercontent.com/scoopinstaller/install/refs/heads/master/install.ps1

```powershell
>> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

>> $env:SCOOP='D:\DEV\Scoop'
>> [environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

# https://github.com/ScoopInstaller/Scoop/blob/master/bin/install.ps1
# https://raw.githubusercontent.com/ScoopInstaller/Scoop/refs/heads/master/bin/install.ps1

# >> iwr -useb https://raw.githubusercontent.com/ScoopInstaller/Scoop/refs/heads/master/bin/install.ps1 | iex
>> iwr -useb https://gh-proxy.com/https://raw.githubusercontent.com/scoopinstaller/install/master/install.ps1 | iex

```
## 配置

```powershell
# >> scoop config SCOOP_REPO https://github.com/ScoopInstaller/Scoop.git
>> scoop config SCOOP_REPO https://gh-proxy.com/https://github.com/ScoopInstaller/Scoop.git

>> scoop install git

>> scoop bucket rm main

>> scoop bucket add main https://mirrors.nju.edu.cn/git/scoop-main.git/
>> scoop bucket add versions https://mirrors.nju.edu.cn/git/scoop-versions.git/
>> scoop bucket add extras https://mirrors.nju.edu.cn/git/scoop-extras.git/
>> scoop bucket add nerd-fonts https://mirrors.nju.edu.cn/git/scoop-nerd-fonts.git/

>> scoop install aria2

>> scoop config aria2-split 5
>> scoop config aria2-max-connection-per-server 5
>> scoop config aria2-min-split-size 1M
```

## 迁移

- PATH: %SCOOP%\shims

```powershell
>> $env:SCOOP='D:\DEV\Scoop'
>> [environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

>> cd $SCOOP
>> ./apps/scoop/current/bin/refresh.ps1
>> ./apps/scoop/current/bin/scoop.ps1
>> scoop reset *
```

## 清理

```powershell
>> scoop cleanup -a; scoop cache rm -a
```

## 软件列表

- 7zip
- git
- aria2

- busybox
- sudo

- telnet
- proxifier

- -- web donwload -- wave terminal
- wezterm
- starship
- neovim
- nu
- -- xpipe

- curl
- -- trzsz
- jq
- bat

- -- nanazip
- -- -- peazip
- freedownloadmanager
- abdownloadmanager
- -- win store -- Xtreme Download Manager

- vscode
- -- electerm
- wsl2-distro-manager

- -- dark
- docker
- docker-compose
- podman
- podman-desktop
- containerd
- nerdctl
- lazydocker
- kind
- -- win store -- container desktop

- DejaVuSansMono-NF-Mono
- DejaVuSansMono-NF
- Hack-NF-Mono
- Hack-NF

- xplorer
- -- space drive

```powershell
>> scoop install DejaVuSansMono-NF-Mono DejaVuSansMono-NF
>> scoop install Hack-NF-Mono Hack-NF
```

### podman mirror config

```conf
unqualified-search-registries=["docker.io"]

[[registry]]
prefix = "docker.io"
location = "docker.io"

[[registry.mirror]]
location = "docker.mirrors.ustc.edu.cn"
[[registry.mirror]]
location = "hub-mirror.c.163.com"
insecure = true
[[registry.mirror]]
location = "rigistry.docker-cn.com"
```
