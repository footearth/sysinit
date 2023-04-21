# SYS INIT

## W11

- 电脑管家
- 火绒

- 微软壁纸
- 必应壁纸

- utools

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
    - Edge

- github
    - macast
        - https://github.com/xfangfang/Macast
    - mactype
        - https://github.com/snowie2000/mactype
        - https://mactype.net

- WSA 安卓子系统
    - https://store.rg-adguard.net
    - https://apps.microsoft.com/store/detail/windows-subsystem-for-android%E2%84%A2-with-amazon-appstore/9P3395VX91NR
    - ```Add-AppxPackage "D:\文件所在的路径\wsa.Msixbundle"```

## [scoop](./docs/Scoop.md)

## git-proxy

- https://www.ooopn.com/tool/github/
    - hub.fgit.ml
    - hub.nuaa.cf
    - hub.yzuu.cf
    - hub.njuu.cf

## WSL

```powershell
>> dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
>> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# restart win11

>> wsl --update
>> wsl --shutdown
>> wsl -l -v
```
