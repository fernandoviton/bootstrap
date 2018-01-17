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

function pro { npp $profile}

##-------------------------------------------
## Load Script Libraries
##-------------------------------------------
$lib_home = "$PSScriptRoot\scripts"
Get-ChildItem $lib_home\*.ps1 | ForEach-Object {. (Join-Path $lib_home $_.Name)} | Out-Null

##-------------------------------------------
## Key Remaps
##-------------------------------------------
# flip Up/Down and F8/Shift+F8
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key F8 -Function PreviousHistory
Set-PSReadlineKeyHandler -Key Shift+F8 -Function NextHistory

##-------------------------------------------
## Notes
##-------------------------------------------
# Poshgit is done using https://github.com/dahlbyk/posh-git which can be obtained via choco install.
# It should modify your profile if your powershell profile but if it doesn't (or if you install it before you have one) add something like this:
# Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-a4faccd\src\posh-git.psd1'
