switch ($HookType) {
    'pre_uninstall' {
        $_ = "$dir\2exp.json"
        if ([System.IO.File]::Exists($_)) {
            $scoop_2exp_version = ([System.IO.File]::ReadAllText($_) | ConvertFrom-Json -ErrorAction SilentlyContinue).version
            [Environment]::SetEnvironmentVariable('__scoop_2exp_version', $scoop_2exp_version, 'Process')
        }
    }
    'post_uninstall' {
        $scoop_2exp_version = [Environment]::GetEnvironmentVariable('__scoop_2exp_version', 'Process')
        Remove-Item Env:\__scoop_2exp_version -ErrorAction SilentlyContinue
    }
}
if ($scoop_2exp_version -notmatch '^\d+$') {
    # Always keep the latest version
    $scoop_2exp_version = 1
}
. $PSScriptRoot\version\$scoop_2exp_version.ps1
