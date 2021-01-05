<#
    .SYNOPSIS
        Used to install basic software on a clean setup
    .PARAMETER All
        The full URL to ...
    .PARAMETER IsParam
        A bool param
#>

param(
    [switch] $All,
    [switch] $IsParam
    )

Write-Host "Going to install VS Code..."
winget install vscode
Write-Host "VS Code installed."


Write-Host "Going to install Windows Terminal..."
winget install Microsoft.WindowsTerminal
Write-Host "Windows Terminal installed."

$toolsFolderExist = Test-Path "~/Documents/tools"
if ($toolsFolderExist -ne $True ) {
    mkdir -Path "~/Documents/tools"
}

Write-Host "Going to install Neovim..."
Invoke-WebRequest https://github.com/neovim/neovim/releases/download/v0.4.4/nvim-win64.zip -OutFile nvim.zip
Expand-Archive -Path nvim.zip -DestinationPath nvim

Move-Item "nvim/Neovim" "~/Documents/tools"
Remove-Item -Path "nvim.zip"
Remove-Item -Path "nvim" -Recurse -Force

$Env:Path += ";" + $Env:USERPROFILE + "\\Documents\\tools\\Neovim\\bin"
