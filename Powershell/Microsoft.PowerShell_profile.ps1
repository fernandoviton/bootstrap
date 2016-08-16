##-------------------------------------------
## Aliases
##-------------------------------------------
Set-Alias npp "C:\Program Files (x86)\Notepad++\notepad++.exe"
Set-Alias n "C:\Program Files\Notepad2\Notepad2.exe"
Set-Alias vs "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"

# to add arguments to a command, you need to create a function and then alias that

##-------------------------------------------
## Misc functions
##-------------------------------------------
function which($cmd) { (gcm $cmd).Path }

##-------------------------------------------
## Load Script Libraries
##-------------------------------------------
$lib_home = "$PSScriptRoot\scripts"
Get-ChildItem $lib_home\*.ps1 | ForEach-Object {. (Join-Path $lib_home $_.Name)} | Out-Null

##-------------------------------------------
## Load Git/PoshGit
##-------------------------------------------
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
. $env:github_posh_git\profile.example.ps1
# Fix tmp as Shell.ps1 overwrites TMP and TEMP with a version with a trailing '\' 
$env:TMP = $env:TEMP = [system.io.path]::gettemppath().TrimEnd('\') 