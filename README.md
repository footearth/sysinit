# SYS INIT

## W11

- 电脑管家
- 火绒
- 微软壁纸
- 必应壁纸
- utools
- free download manager

- 微软商店
    - 更纱字体
    - Windows Terminal Preview
    - Fluent Terminal
    - PowerShell
    - WSA工具箱
    - WSL(Windows Subsystem for Linux)
    - Arch WSL

    - 网易云音乐
    - QQ音乐
    - 哔哩哔哩
    - 爱奇艺
    - 腾讯视频

- 电脑管家-软件管家
    - 微信
    - 飞书

    - 阿里云盘
    - 百度网盘
    - 夸克网盘
    
    - vivaldi

- github
    - macast
        - https://github.com/xfangfang/Macast
    - mactype
        - https://github.com/snowie2000/mactype
        - https://mactype.net

    - wsl2distromanager
        - https://github.com/bostrot/wsl2-distro-manager
    - SolusWSL2
        - https://github.com/sileshn/SolusWSL2

- scoop
    - 7zip
    - git
    - aria2
    - busybox

    - neovim

    - nu
    - starship

    - wezterm

    - vscode
    - peazip
    
    - docker
    - podman-desktop
    - podman

## scoop

```powershell
>> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

>> $env:SCOOP='d:\DEV\Scoop'
>> [environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

>> iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex

// https://gitee.com/glsnames/scoop-installer
>> scoop config SCOOP_REPO https://gitee.com/scoop-bucket/scoop

>> scoop bucket add extras https://gitee.com/scoop-bucket/extras.git
>> scoop bucket add versions

>> scoop config aria2-split 5
>> scoop config aria2-max-connection-per-server 5
>> scoop config aria2-min-split-size 1M

>> scoop bucket rm main
>> scoop bucket add main https://mirror.nju.edu.cn/git/scoop-main.git
>> scoop bucket add extras https://mirror.nju.edu.cn/git/scoop-extras.git

>> scoop bucket add nerd-fonts
>> scoop install DejaVuSansMono-NF-Mono DejaVuSansMono-NF
>> scoop install Hack-NF-Mono Hack-NF
```

```powershell
>> dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
>> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# restart win11

>> wsl --update
>> wsl --shutdown
>> wsl -l -v
```

## Arch

```powershell
>> wsl -s Arch
>> wsl
```

## Solus

```powershell
>> wsl -s Solus
>> wsl
```
