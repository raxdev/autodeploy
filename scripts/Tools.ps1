# ---------------------------------------------- #
# Browsers  ------------------------------------ #
# ---------------------------------------------- #
choco install -y googlechrome
choco install -y firefox

# ---------------------------------------------- #
# Common tools  --------------------------------- #
# ---------------------------------------------- #
choco install -y 7zip
choco install -y paint.net
choco install -y screentogif
choco install -y zoomit
winget install -e -h --id WinDirStat.WinDirStat
winget install -e --id Ghisler.TotalCommander
winget install -e -h --id Obsidian.Obsidian
winget install -e -h --id JohnMacFarlane.Pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
winget install -e -h --id Microsoft.PowerToys # settings to sync

# ---------------------------------------------- #
# Dev tools  ----------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id CoreyButler.NVMforWindows
iwr https://get.pnpm.io/install.ps1 -useb | iex
# iwr -useb get.scoop.sh | iex
winget install -e -h --id GitHub.cli

# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
# pwsh -Command { Install-Module posh-git -Scope CurrentUser -Force}
winget install -e -h --id JanDeDobbeleer.OhMyPosh

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\autodeploy\config\powerShell\Microsoft.PowerShell_profile.ps1"

# ---------------------------------------------- #
# NuShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Nushell.Nushell
# saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
oh-my-posh init nu --config "$env:USERPROFILE\autodeploy\config\prompt\.oh-my-posh.omp.json"
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\autodeploy\config\nu\config.nu"
# config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal (stable + preview) install with Cascadia Code PL font
winget install -e -h --id Microsoft.WindowsTerminal -s msstore
winget install -e -h --id Microsoft.WindowsTerminalPreview -s msstore
choco install -y cascadiacodepl
# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\autodeploy\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\autodeploy\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"
# Windows terminal preview configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\autodeploy\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\autodeploy\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\RoamingState\"

# ---------------------------------------------- #
# Azure tools  --------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.AzureCLI
winget install -e -h --id Microsoft.AzureCosmosEmulator
winget install -e -h --id Microsoft.AzureDataStudio
winget install -e -h --id Microsoft.azure-iot-explorer
winget install -e -h --id Microsoft.AzureStorageExplorer
winget install -e -h --id Pulumi.Pulumi
winget install -e -h --id Microsoft.AzureFunctionsCoreTools
# Azurite can be installed through vscode extension or as a global npm package
# pnpm add -g azurite


# ---------------------------------------------- #
# Development aides  --------------------------- #
# ---------------------------------------------- #


winget install -e -h --id Postman.Postman
winget install -e -h --id Notepad++.Notepad++
winget install -e -h --id Telerik.Fiddler
winget install -e --id WiresharkFoundation.Wireshark
winget install -e --id LutzRoeder.Netron
winget install -e --id Evolus.Pencil

winget install -e --id GitHub.GitHubDesktop
winget install -e --id TortoiseGit.TortoiseGit

winget install -e --id ImageMagick.ImageMagick
winget install -e --id Anaconda.Anaconda3
winget install -e --id LINQPad.LINQPad.7
winget install -e --id WinMerge.WinMerge


# ---------------------------------------------- #
# Databases          --------------------------- #
# ---------------------------------------------- #
winget install -e --id MongoDB.Server
winget install -e --id MongoDB.DatabaseTools
winget install -e --id MongoDB.Shell
winget install -e --id MongoDB.Compass.Community

winget install -e --id Microsoft.SQLServerManagementStudio
winget install -e --id Microsoft.SQLServer.2019.Developer



# ---------------------------------------------- #
# VPN Clients        --------------------------- #
# ---------------------------------------------- #

winget install -e --id NordVPN.NordVPN
winget install -e --id Fortinet.FortiClientVPN
winget install -e --id OpenVPNTechnologies.OpenVPN

# ---------------------------------------------- #
# Assorted tools     --------------------------- #
# ---------------------------------------------- #


winget install -e --id GIMP.GIMP
winget install -e --id Balena.Etcher
winget install -e --id calibre.calibre
winget install -e --id Google.EarthPro
winget install -e --id clsid2.mpc-hc


winget install -e --id SublimeHQ.SublimeText.4
winget install -e --id Cyanfish.NAPS2
winget install -e --id RealVNC.VNCViewer

winget install -e --id IrfanSkiljan.IrfanView
winget install -e --id CPUID.HWMonitor
winget install -e --id Piriform.CCleaner
winget install -e --id Piriform.Recuva

winget install -e --id Adobe.Acrobat.Reader.64-bit
winget install -e --id AnyDeskSoftwareGmbH.AnyDesk

choco install sysinternals




# ---------------------------------------------- #
# Blog tools  ---------------------------------- #
# ---------------------------------------------- #
# wyam
# netlify
# statiq
