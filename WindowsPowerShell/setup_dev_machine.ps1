# Dev Machine Powershell setup - Requires Admin prompt
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	$arguments = "& '" + $myinvocation.mycommand.definition + "'"
	Start-Process powershell -Verb runAs -ArgumentList $arguments
	Break
}

# Chocolatey install
if (!(gcm cinst -ErrorAction SilentlyContinue)){
	iex ((new-object net.webclient).DownloadString('http://bit.ly/psChocInstall'))
}

# install applications
cinst slack -y
cinst google-chrome-x64 -y
cinst notepadplusplus -y
cinst notepad2 -y
cinst git -y
cinst github -y
cinst poshgit -y

// TODO: node and consider: npm install tslint -g typescript

# Setup Powershell symlinks
# Don't do this since poshgit will modify the powershell so not sure this is a good way to go
# cmd /c mklink /D  "$env:USERPROFILE\Documents\WindowsPowerShell\" "$PSScriptRoot"