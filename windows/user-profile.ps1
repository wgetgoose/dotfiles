oh-my-posh init pwsh --config C:\Users\carson\coding\dotfiles\windows\custom-dracula.json | Invoke-Expression

Import-Module PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs

# Import-Module posh-git
# Not using posh-git currently, instead using oh-my-posh's git segment
Import-Module Terminal-Icons

function upall {
    scoop update *
    winget upgrade --all
}

Set-Alias grep findstr
Set-Alias ll ls
Set-Alias vscodium codium.cmd

# Fixes launch bug with unexpected spaces, see here => https://github.com/JanDeDobbeleer/oh-my-posh/issues/1029
clear