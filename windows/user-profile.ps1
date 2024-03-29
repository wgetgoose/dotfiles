oh-my-posh init pwsh --config $env:USERPROFILE\dotfiles\windows\custom-dracula.json | Invoke-Expression

Import-Module PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs

# Not using posh-git currently, instead using oh-my-posh's git segment
# Import-Module posh-git

Import-Module Terminal-Icons

function upall {
    sudo scoop update *
    sudo winget upgrade --all
}

# I hate findstring, to BusyBox grep we go
# Set-Alias grep findstr

Set-Alias ll ls
Set-Alias vscodium codium.cmd

# BusyBox rm instead of Windows native
Set-Alias rm rm.exe

# Use faster scoop-search application, see https://github.com/shilangyu/scoop-search
Invoke-Expression (&scoop-search --hook)

# Tab-Complete / Autocomplete for winget: https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}