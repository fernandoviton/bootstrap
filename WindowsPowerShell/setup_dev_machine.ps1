# Dev Machine Powershell setup - Requires Admin prompt
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	$arguments = "& '" + $myinvocation.mycommand.definition + "'"
	Start-Process powershell -Verb runAs -ArgumentList $arguments
	Break
}

# Chocolatey install
if (!(gcm choco install  -ErrorAction SilentlyContinue)){
	iex ((new-object net.webclient).DownloadString('http://bit.ly/psChochoco install all'))
}

# install applications
choco install vscode -y
choco install slack -y
choco install firefox -y
choco install notepadplusplus -y
choco install notepad2 -y
choco install github -y
choco install poshgit -y
choco install nodejs -y

# Setup Powershell symlinks
# Don't do this since poshgit will modify the powershell so not sure this is a good way to go
# cmd /c mklink /D  "$env:USERPROFILE\Documents\WindowsPowerShell\" "$PSScriptRoot"
