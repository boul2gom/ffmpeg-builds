# 📦 ffmpeg-builds

[![Build](https://img.shields.io/github/actions/workflow/status/boul2gom/ffmpeg-builds/auto-release.yml?branch=master)](https://github.com/boul2gom/ffmpeg-builds/actions)
[![Release](https://img.shields.io/github/release/boul2gom/ffmpeg-builds.svg)](https://github.com/boul2gom/ffmpeg-builds/releases)
[![Downloads](https://img.shields.io/github/downloads/boul2gom/ffmpeg-builds/total.svg)](https://github.com/boul2gom/ffmpeg-builds/releases)

📦 **ffmpeg-builds** is an automation workflow that produces static builds of [FFmpeg](https://ffmpeg.org) for an array of different platforms.
You can find ready to download assets for each target in the [releases](https://github.com/boul2gom/ffmpeg-builds/releases) of this repository.

### Currently supported targets:

|                            | Windows | Linux | macOS | Android            |
| -------------------------- | ------- | ----- | ----- | ------------------ |
| `arm64` / `aarch64`        | ✅      | ✅    | ✅    | ✅ (`arm64-v8a`)   |
| `arm`                      | ❌      | ❌    | ❌    | ✅ (`armeabi-v7a`) |
| `x64` / `x86_64` / `amd64` | ✅      | ✅    | ✅    | ✅                 |
| `x86` / `i386`             | ✅      | ✅    | ❌    | ✅                 |

Builds are performed using [vcpkg](https://github.com/microsoft/vcpkg).
For a list of enabled FFmpeg features, see the [manifest file](vcpkg.json).

### Download

- **[Latest version](https://github.com/boul2gom/ffmpeg-builds/releases/latest)**
- [All versions](https://github.com/boul2gom/ffmpeg-builds/releases)

To programmatically fetch a specific release, use the following URL pattern:

```
https://github.com/boul2gom/ffmpeg-builds/releases/download/${VERSION}/ffmpeg-${OS}-${ARCH}.zip
```
