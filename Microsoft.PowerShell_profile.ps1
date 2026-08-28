$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json' | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

# These settings may fail if PSReadLine is not available (e.g., in some remote sessions or when running PowerShell through CLI tools like Copilot or Claude Code),
# so we wrap them in try-catch blocks
try {
    Set-PSReadLineOption -PredictionSource History
}
catch {
    # Ignore if PSReadLine options cannot be set
}

try {
    Set-PSReadLineOption -PredictionViewStyle ListView
}
catch {
    # Ignore if PSReadLine options cannot be set
}

Set-PSReadLineOption -EditMode Windows

function GitPrune {
    git remote update origin --prune; git branch -vv | Select-String -Pattern ": gone]" | % { $_.toString().Trim().Split(" ")[0] } | % { git branch -d $_ }
}
