## This command disables User Account Control to run the script without user interaction, it is enabled at the end of the script.
## To avoid security concerns you can comment it if you prefer, otherwhise please check the software you install is safe and use this command at your own risk.
Disable-UAC
$Boxstarter.AutoLogin=$false

git clone https://github.com/raxdev/autodeploy.git "$env:USERPROFILE\autodeploy"
# Git configuration
Remove-Item -Path "$env:USERPROFILE\.gitconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.gitconfig" -Target "$env:USERPROFILE\autodeploy\config\git\.gitconfig"
# TODO: configure git signature

# Winget configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\autodeploy\config\winget\settings.json"


#--- Setting up Windows ---
. "$env:USERPROFILE\autodeploy\scripts\Tools.ps1"

#--- reenabling critial items ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
