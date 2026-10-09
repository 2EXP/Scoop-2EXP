<h1 align="center">✨<a href="https://github.com/2EXP/scoop-2exp">2exp</a>✨</h1>

<p align="center">
    <a href="README.md">English</a> |
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
  <strong>一个基于 abyss 引擎的、自成体系的 Scoop bucket</strong>
</p>
<p align="center">
  <strong>个人自用，保持包始终为最新版本</strong>
</p>

> [!IMPORTANT]
>
> - 2exp 是一个个人 Scoop bucket。它的 [清单](./bucket/) 使用 [abyss](https://abyss.abgox.com/docs/why-abyss) 引擎 ([util](./util/)) 和 [唯一的 bucket 名称](https://abyss.abgox.com/docs/bucket-name) 进行编写，因此添加 bucket 时**必须**使用 `2exp` 作为名称。
> - 该引擎移植自 [abgox/abyss](https://github.com/abgox/abyss)（MIT）。上游文档保留在 [abyss.abgox.com/docs](https://abyss.abgox.com/docs/)，第三方辅助工具（PSCompletions、scoop-i18n、scoop-tools）从 abyss bucket 安装。

## 特性

> [!TIP]
>
> 与标准的 bucket 不同，2exp 包含了从 [abyss](https://abyss.abgox.com) 继承的额外特性

- [优秀的数据持久化](https://abyss.abgox.com/docs/features/data-persistence)
- [显式的清单状态控制](https://abyss.abgox.com/docs/features/manifest-status-control)
- [灵活的应用安装方案](https://abyss.abgox.com/docs/features/install-solution)
- [基于 Scoop 配置的其他功能](https://abyss.abgox.com/docs/features/extra-features)
- 由 [scoop-i18n](https://scoop-i18n.abgox.com) 提供多语言支持
- 标准化的目录结构和应用清单名称
  - 参考: [winget-pkgs](https://github.com/microsoft/winget-pkgs)
  - 格式: **Publisher.PackageIdentifier**

## 引擎配置键

引擎会读取两个 Scoop 配置键。上游文档中它们名为 `abgox-abyss-app-*`，在本 bucket 中改名为 `2exp-app-*`：

```shell
# 快捷方式：0 = 从不创建，1 = 总是创建（默认），2 = 应用安装器已创建时跳过
scoop config 2exp-app-shortcuts-action 1

# 卸载清理步骤：数字 1 移除本 bucket 添加的 PATH/环境变量条目，
# 数字 3 额外删除 `cleanup` 中列出的目录（默认: 123）
scoop config 2exp-app-uninstall-action 123
```

## 清单

浏览本仓库的 [bucket](./bucket/) 目录。

## 如果没有用过 Scoop

- [Scoop](https://scoop.sh)
- [Scoop - GitHub Wiki](https://github.com/ScoopInstaller/Scoop/wiki)

## 如果正在使用 Scoop

1. 添加 2exp bucket

   ```shell
   scoop bucket add 2exp https://github.com/2EXP/scoop-2exp
   ```

   ```shell
   scoop bucket add 2exp git@github.com:2EXP/scoop-2exp.git
   ```

2. 可选：在 [PowerShell](https://www.microsoft.com/powershell) 中，使用 [PSCompletions](https://pscompletions.abgox.com) 添加 `scoop` 命令补全（由 abyss bucket 提供）

   ```shell
   scoop install abyss/abgox.PSCompletions
   ```

   ```powershell
   Import-Module PSCompletions
   ```

   ```shell
   psc add scoop
   ```

3. 可选：从 abyss bucket 安装 [scoop-i18n](https://scoop-i18n.abgox.com) 以提供多语言支持

   ```shell
   scoop install abyss/abgox.scoop-i18n
   ```

## 如果无法访问 GitHub 资源

[scoop-tools](https://scoop-tools.abgox.com) 允许你临时使用替换之后的代理 url 来下载安装包

- GitHub: https://github.com/abgox/scoop-tools

## License

[MIT](./LICENSE) © 2EXP。移植自 [abgox/abyss](https://github.com/abgox/abyss) © [abgox](https://me.abgox.com)。
