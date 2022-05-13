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