# mc-server

Minecraft 服务器整合仓库。

包含内容（目录结构）：

| 目录 | 说明 |
| --- | --- |
| `1` | Spigot 1.20.1 服务端 |
| `1.21.11` | Fabric 1.21.11 服务端（含 mods） |
| `CN PVP` | CN PVP 服务端（Carbonspigot / Clubspigot） |
| `minecraft服务器` | 主服务器（Spigot 1.20.1 + 插件） |
| `宣传片` | 服务器宣传视频 |
| `服务器备份` | 各服务端备份（含 zip 快照） |

> 说明：`内网映射`（frp 内网穿透）目录未包含在本仓库中。
> 超过 GitHub 100MB 单文件限制的文件使用 Git LFS 托管。

## 启动方式

各服务端目录内一般包含 `start.bat` / `start.sh`，Java 运行时随目录携带。
