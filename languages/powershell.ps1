# PowerShell7.1 速查表
# 已安装 PSReadLine


#-------------------------------------------------------------------------------------------#
## 常量
$PSVersionTable         # 版本信息
$PROFILE                # 配置文件


#-------------------------------------------------------------------------------------------#
## 输入输出

### 输入
Write-Output "Hello World!" >> /.log.txt    # alias: write, echo
### 获取指定位置项目的内容
Get-Content ./log.txt   # alias: gc, cat, type


#-------------------------------------------------------------------------------------------#
## 查看帮助

Get-Help
Get-Command


#-------------------------------------------------------------------------------------------#
## 别名

### 设置别名
Set-Alias -Name ls -Value ListDirectory
### 创建别名
New-Alias -Name "List" Get-ChildItem    # alias: nal
### 删除别名
Remove-Alias -Name del


#-------------------------------------------------------------------------------------------#
## 文件系统

### 获取当前工作路径
Get-Location    # alias: pwd, gl
### 指定当前工作路径
Set-Location ./ # alias: cd
### 删除
Remove-Item ./log.txt   # alias: ri, rm, rmdir, del, erase, rd
### 拷贝
Copy-Item "./log.txt" -Destination "../log.txt" # alias: cpi, cp, copy
### 移动
Move-Item -Path ./log.txt -Destination ../log.txt   # alias: mi, mv, move
### 重命名
Rename-Item -Path "./log.txt" -NewName "new_log.txt"    # alias: rni, ren


## 列出指定目录
Get-ChildItem .  # alias: ll, gci, dir

function ListDirectory {
    (Get-ChildItem).Name
    Write-Host("")
}


#-------------------------------------------------------------------------------------------#
## 模块

### 查找模块
Find-Module -Name PowerShellGet # alias: fimo
### 安装模块
Install-Module -Name PowerShellGet  # alias: inmo

