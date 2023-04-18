# Scoop

## 安装

- https://raw.fgit.ml/ScoopInstaller/Install/master/install.ps1
- https://raw.kgithub.com/ScoopInstaller/Install/master/install.ps1

```pwsh
>> iwr -useb https://raw.fgit.ml/ScoopInstaller/Install/master/install.ps1 | iex
```

## 配置

```pwsh
>> scoop bucket add main https://mirrors.nju.edu.cn/git/scoop-main.git/
>> scoop bucket add versions https://mirrors.nju.edu.cn/git/scoop-versions.git/
>> scoop bucket add extras https://mirrors.nju.edu.cn/git/scoop-extras.git/
>> scoop bucket add nerd-fonts https://mirrors.nju.edu.cn/git/scoop-nerd-fonts.git/
```

## 迁移

- PATH: %SCOOP%\shims

```pwsh
$env:SCOOP='D:\DEV\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

cd $SCOOP
./apps/scoop/current/bin/refresh.ps1
./apps/scoop/current/bin/scoop.ps1
scoop reset *
```
