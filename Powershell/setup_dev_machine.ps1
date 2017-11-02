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

# Setup Powershell symlinks
cmd /c mklink /D  "$env:USERPROFILE\Documents\WindowsPowerShell\" "$PSScriptRoot"
