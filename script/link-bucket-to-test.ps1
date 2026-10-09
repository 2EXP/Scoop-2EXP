$root_path = scoop config root_path

if (-not $root_path) {
    Write-Host 'Scoop does not have a root_path configuration.' -ForegroundColor Red
    exit 1
}

$path = "$root_path\buckets\2exp"

if (Test-Path $path) {
    $confirm = Read-Host "The bucket '2exp' already exists in Scoop. Do you want to overwrite it? (y/n)"
    if ($confirm -eq 'y') {
        Remove-Item $path -Recurse -Force
    }
    else {
        Write-Host 'Aborted.' -ForegroundColor Red
        exit 1
    }
}

New-Item -ItemType SymbolicLink -Path "$root_path\buckets\2exp" -Target "$PSScriptRoot\.." -Force
