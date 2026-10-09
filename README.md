<h1 align="center">✨<a href="https://github.com/2EXP/scoop-2exp">2exp</a>✨</h1>

<p align="center">
    <a href="README.zh-CN.md">简体中文</a> |
    <a href="https://github.com/2EXP/scoop-2exp">GitHub</a>
</p>

<p align="center">
    <a href="https://github.com/2EXP/scoop-2exp">
        <img src="https://img.shields.io/github/stars/2EXP/scoop-2exp" alt="github stars" />
    </a>
    <a href="https://github.com/2EXP/scoop-2exp/blob/main/LICENSE">
        <img src="https://img.shields.io/github/license/2EXP/scoop-2exp" alt="license" />
    </a>
    <a href="https://github.com/2EXP/scoop-2exp">
        <img src="https://img.shields.io/github/created-at/2EXP/scoop-2exp" alt="created" />
    </a>
</p>

<p align="center">
    <a href="https://www.microsoft.com/windows">
        <img src="https://img.shields.io/badge/platform-Windows%2010+-blue" alt="platform" />
    </a>
    <a href="https://github.com/2EXP/scoop-2exp/commits">
        <img src="https://img.shields.io/github/commit-activity/m/2EXP/scoop-2exp" alt="commit activity" />
    </a>
</p>

---

<p align="center">
  <strong>An opinionated Scoop bucket, built on the abyss engine.</strong>
</p>
<p align="center">
  <strong>A personal bucket that keeps its packages current.</strong>
</p>

> [!IMPORTANT]
>
> - 2exp is a personal Scoop bucket. Its [manifests](./bucket/) are written with the [abyss](https://abyss.abgox.com/docs/why-abyss) engine ([util](./util/)) and [a unique bucket name](https://abyss.abgox.com/docs/bucket-name), so the bucket **must** be added as `2exp`.
> - The engine is ported from [abgox/abyss](https://github.com/abgox/abyss) (MIT). Its upstream documentation is kept at [abyss.abgox.com/docs](https://abyss.abgox.com/docs/), and third-party helpers (PSCompletions, scoop-i18n, scoop-tools) are installed from the abyss bucket.

## Features

> [!TIP]
>
> Unlike standard buckets, 2exp includes extra features inherited from [abyss](https://abyss.abgox.com).

- [Better Data Persistence](https://abyss.abgox.com/docs/features/data-persistence)
- [Explicit Manifest Status Control](https://abyss.abgox.com/docs/features/manifest-status-control)
- [Flexible App Installation Solution](https://abyss.abgox.com/docs/features/install-solution)
- [Extra Features via Scoop Configuration](https://abyss.abgox.com/docs/features/extra-features)
- Multilingual support powered by [scoop-i18n](https://scoop-i18n.abgox.com).
- Standardized directory structure and manifest name.
  - Inspired by: [winget-pkgs](https://github.com/microsoft/winget-pkgs)
  - Name Format: **Publisher.PackageIdentifier**

## Engine configuration keys

The engine reads two Scoop configuration keys. The upstream documentation describes them as `abgox-abyss-app-*`; in this bucket they are renamed to `2exp-app-*`:

```shell
# Shortcut creation: 0 = never, 1 = always (default), 2 = skip when the app's installer already created one
scoop config 2exp-app-shortcuts-action 1

# Uninstall cleanup steps: digit 1 removes the PATH/env entries this bucket added,
# digit 3 additionally deletes the directories listed in `cleanup` (default: 123)
scoop config 2exp-app-uninstall-action 123
```

## Manifests

Browse the [bucket](./bucket/) directory of this repository.

## If you have never used Scoop

- [Scoop](https://scoop.sh)
- [Scoop - GitHub Wiki](https://github.com/ScoopInstaller/Scoop/wiki)

## If you are currently using Scoop

1. Add the 2exp bucket.

   ```shell
   scoop bucket add 2exp https://github.com/2EXP/scoop-2exp
   ```

   ```shell
   scoop bucket add 2exp git@github.com:2EXP/scoop-2exp.git
   ```

2. Optionally, add `scoop` completion via [PSCompletions](https://pscompletions.abgox.com) in [PowerShell](https://www.microsoft.com/powershell). The app is provided by the abyss bucket.

   ```shell
   scoop install abyss/abgox.PSCompletions
   ```

   ```powershell
   Import-Module PSCompletions
   ```

   ```shell
   psc add scoop
   ```

3. Optionally, install [scoop-i18n](https://scoop-i18n.abgox.com) from the abyss bucket for multilingual support.

   ```shell
   scoop install abyss/abgox.scoop-i18n
   ```

## If you cannot access GitHub resources

[scoop-tools](https://scoop-tools.abgox.com) allows you to temporarily use the replaced proxy URL to download app packages.

- GitHub: https://github.com/abgox/scoop-tools

## License

[MIT](./LICENSE) © 2EXP. Ported from [abgox/abyss](https://github.com/abgox/abyss) © [abgox](https://me.abgox.com).
