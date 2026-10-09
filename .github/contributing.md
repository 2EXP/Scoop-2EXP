# Contributing

This is a personal Scoop bucket. Manifests live under `bucket/<first-letter>/<Publisher>/<Publisher>.<Package>.json`
and are written with the abyss engine (`util/`), so they only work when the bucket is added as `2exp`.

To report a problem or request a package, open an issue:

- https://github.com/2EXP/scoop-2exp/issues

Before opening a pull request, please run the local checks:

```powershell
.\bin\checkver.ps1 <app>        # version detection
.\script\sort-json.ps1          # key order and formatting
```
