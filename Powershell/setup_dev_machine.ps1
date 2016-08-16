# Dev Machine Powershell setup - Requires Admin prompt

# Chocolatey install
iex ((new-object net.webclient).DownloadString('http://bit.ly/psChocInstall'))

# install applications
cinst slack -y
cinst google-chrome-x64 -y
cinst notepadplusplus -y
cinst notepad2 -y
# cinst git -y
# cinst github -y # failing due to md5 sum mismatch
#TODO: setup consolez

# Setup Powershell symlinks
cmd /c mklink /D  "$env:USERPROFILE\Documents\WindowsPowerShell\" "$PSScriptRoot"