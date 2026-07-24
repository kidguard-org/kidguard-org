# release/ — OTA 发布目录

由 **`./scripts/build.sh`** 产出（顺序：逻辑包 → `assets/ksp.logic/` + 本目录 `ksp.logic/` → 编 APK；宿主版本由 Gradle 写入本目录 `ksp.version`）。

版本只记在本目录（不再使用 `ksp/` 根下的 `ksp.version` / `ksp.logic.version`）：

- `release/ksp.version`
- `release/ksp.logic/ksp.logic.version`

**不要**用 `./scripts/debug_apk.sh` 往这里放 APK；该脚本仅本地 `adb` 调试。

## 目录结构

发布到 GitHub raw 时，将本目录**原样**放到仓库 `main` 分支的 `ksp/` 下（路径与线上 URL 一一对应）。

```text
release/
  ksp.apk
  ksp.version
  ksp.logic/
    ksp.logic.jar
    ksp.logic.sig
    ksp.logic.version
  README.md
```

| 路径 | 说明 |
| --- | --- |
| `ksp.apk` | 宿主 Release APK（已内置 `assets/ksp.logic/`，离线可加载逻辑） |
| `ksp.version` | 宿主 versionCode + versionName（两行） |
| `ksp.logic/*` | 逻辑三件套（与 APK assets、线上 `…/ksp/ksp.logic/*` 一致） |

## 线上 URL

全量 OTA / 激活：

```text
…/main/ksp/ksp.apk
…/main/ksp/ksp.version
```

逻辑热更新（可选）：

```text
…/main/ksp/ksp.logic/ksp.logic.version
…/main/ksp/ksp.logic/ksp.logic.jar
…/main/ksp/ksp.logic/ksp.logic.sig
```

详见 [构建与发布](../doc/build-and-release.md)、[逻辑热更新](../doc/logic-patch.md)。
