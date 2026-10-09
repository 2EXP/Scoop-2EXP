$scoop_2exp = @{
    isAdmin      = A-Test-Admin
    isDevMode    = A-Test-DeveloperMode
    path         = @{
        LinkFile           = "$dir\2exp-A-New-LinkFile.json"
        LinkDirectory      = "$dir\2exp-A-New-LinkDirectory.json"
        InstallApp         = "$dir\2exp-A-Install-App.json"
        InstallInno        = "$dir\2exp-A-Install-Inno.json"
        InstallBurn        = "$dir\2exp-A-Install-Burn.json"
        InstallMsi         = "$dir\2exp-A-Install-Msi.json"
        Font               = "$dir\2exp-A-Install-Font.json"
        PowerToysRunPlugin = "$dir\2exp-A-Install-PowerToysRunPlugin.json"
        EnvPath            = "$dir\2exp-A-Add-Path.json"
        Info               = "$dir\2exp-Info.json"
    }
    knownFolders = @(
        @{ Name = 'Documents'; DefaultPrefix = [System.IO.Path]::Combine($home, 'Documents'); Folder = [Environment]::GetFolderPath('MyDocuments') }
        @{ Name = 'Desktop'; DefaultPrefix = [System.IO.Path]::Combine($home, 'Desktop'); Folder = [Environment]::GetFolderPath('Desktop') }
        @{ Name = 'Pictures'; DefaultPrefix = [System.IO.Path]::Combine($home, 'Pictures'); Folder = [Environment]::GetFolderPath('MyPictures') }
        @{ Name = 'Music'; DefaultPrefix = [System.IO.Path]::Combine($home, 'Music'); Folder = [Environment]::GetFolderPath('MyMusic') }
        @{ Name = 'Videos'; DefaultPrefix = [System.IO.Path]::Combine($home, 'Videos'); Folder = [Environment]::GetFolderPath('MyVideos') }
    )
}

if ($env:GITHUB_ACTIONS) { $VerbosePreference = 'SilentlyContinue' } else { Microsoft.PowerShell.Utility\Write-Host }
if ($bucket) {
    if ($scoopdir -and $scoopdir -ne $scoopConfig.root_path) { scoop config root_path $scoopdir }
    if ($global -and $globaldir -and $globaldir -ne $scoopConfig.global_path) { scoop config global_path $globaldir }
}

# https://abyss.abgox.com/docs/features/extra-features#abgox-abyss-app-uninstall-action
$_ = $scoopConfig.'2exp-app-uninstall-action'
$scoop_2exp.uninstallActionLevel = if ($_ -match '[123]+') { $_ } else { '123' }
