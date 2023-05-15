# Scoop

## 安装

- https://raw.fgit.ml/ScoopInstaller/Install/master/install.ps1
- https://raw.kgithub.com/ScoopInstaller/Install/master/install.ps1

```powershell
>> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

>> $env:SCOOP='D:\DEV\Scoop'
>> [environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

>> iwr -useb https://raw.kgithub.com/ScoopInstaller/Install/master/install.ps1 | iex
```

## 配置

```powershell
>> scoop config SCOOP_REPO https://kgithub.com/ScoopInstaller/Install.git

>> scoop install 7zip git aria2

>> scoop config aria2-split 5
>> scoop config aria2-max-connection-per-server 5
>> scoop config aria2-min-split-size 1M

>> scoop bucket rm main

>> scoop bucket add main https://mirrors.nju.edu.cn/git/scoop-main.git/
>> scoop bucket add versions https://mirrors.nju.edu.cn/git/scoop-versions.git/
>> scoop bucket add extras https://mirrors.nju.edu.cn/git/scoop-extras.git/
>> scoop bucket add nerd-fonts https://mirrors.nju.edu.cn/git/scoop-nerd-fonts.git/
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

## 软件列表

- 7zip
- git
- aria2

- busybox
- sudo
- telnet

- wezterm
- starship
- neovim
- nu

- curl
- trzsz

- peazip
- freedownloadmanager

- vscode
- electerm
- wsl2-distro-manager

- dark
- docker
- docker-compose
- podman
- podman-desktop
- kind

- DejaVuSansMono-NF-Mono
- DejaVuSansMono-NF
- Hack-NF-Mono
- Hack-NF

```powershell
>> scoop install DejaVuSansMono-NF-Mono DejaVuSansMono-NF
>> scoop install Hack-NF-Mono Hack-NF
```
