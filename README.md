<div align="center">
  <img src="assets/logo.svg" alt="Spotix logo" width="128" height="128" />
  <h1>🚀 SpotFreedom (Spotix) 🎵</h1>
  <p><b>Fast, native Spotify client written in Rust & Integrated YouTube Music Patcher</b></p>
  <p>
    <a href="https://github.com/NimuthuGanegoda/SpotFreedom/releases/latest">Latest Release</a>
    •
    <a href="https://github.com/NimuthuGanegoda/SpotFreedom/issues">Issues</a>
  </p>
</div>

---

## ✨ Overview
**SpotFreedom** has evolved. We now provide a dual-powerhouse music experience:
1.  **Spotix:** A lightning-fast, native Spotify client written in Rust (no Electron bloat).
2.  **YTMusic Integration:** A seamless way to enjoy ad-free YouTube Music on your desktop.

---

## 🔥 Features

### 🎧 Spotify (via Spotix Rust Client)
- **⚡ Performance:** Low overhead, lightweight runtime (Rust-powered).
- **🎨 Theming:** Full support for TOML-based themes (Gruvbox, Dracula, etc.).
- **🎚️ Audio Mastery:** Built-in 10-band equalizer with Spotify presets.
- **🔍 Smart Search:** Real-time library search for tracks, albums, and playlists.
- **📜 Lyrics:** High-performance lyrics view with auto-scroll and highlighting.
- **🔄 Continuity:** Playback state restoration (resume where you left off).

### 📺 YouTube Music
- **✅ Zero Ads:** Integrated support for the ad-free YouTube Music experience.
- **🎥 Enhanced Client:** Powered by the community-favorite [Pear Desktop](https://github.com/pear-devs/pear-desktop).
- **📀 Downloader:** Built-in support for downloading songs as MP3 or Opus.
- **🚀 SponsorBlock:** Automatically skip non-music segments.

---

## 💻 Installation / Update

### 🎵 Spotify (Native Rust Client)
Download the latest installers for your platform from the [Releases page](https://github.com/NimuthuGanegoda/SpotFreedom/releases/latest).

| Platform | Download Link |
| :--- | :--- |
| **🐧 Linux (x86_64)** | [Download](https://github.com/skyline69/spotix/releases/latest/download/spotix-linux-x86_64) |
| **🐧 Debian/Ubuntu** | [Download (.deb)](https://github.com/skyline69/spotix/releases/latest/download/spotix-amd64.deb) |
| **🍎 macOS** | [Download (.dmg)](https://github.com/skyline69/spotix/releases/latest/download/Spotix.dmg) |
| **🪟 Windows** | [Download (.exe)](https://github.com/skyline69/spotix/releases/latest/download/Spotix.exe) |

#### Build from Source (Rust)
```bash
cargo install --locked --path spotix-gui
```

### 📺 YouTube Music (Linux)
To install or update the ad-free YouTube Music Desktop App, run:
```bash
./scripts/ytmusic.sh
```

---

## 🎨 Theming (Spotix)
Custom themes live in `~/.config/Spotix/themes/`. Just drop a TOML file and select it in Settings.

<details>
<summary><b>View Theme Example (Catppuccin)</b></summary>

```toml
name = "catppuccin"
base = "dark"
[colors]
grey_000 = "#cdd6f4"
# ... (see themes folder for full details)
```
</details>

---

## 🗑️ Uninstalling
- **Spotify:** Simply remove the `spotix` binary or uninstall the package.
- **YouTube Music:** Use your system's package manager to remove `youtube-music`.

---

## ❓ FAQ & Credits
**Spotix** is a fork of [psst](https://github.com/jpochyla/psst) and leverages:
- [librespot](https://github.com/librespot-org/librespot)
- [druid](https://github.com/linebender/druid)
- [ncspot](https://github.com/hrkfdn/ncspot)

---

## ⚖️ Disclaimer
SpotFreedom is a modification tool provided for educational and evaluation purposes. Use it at your own risk. This project is not affiliated with Spotify or Google.

<p align="center">
  Developed with 🖤 by <a href="https://github.com/NimuthuGanegoda">Nimuthu Ganegoda</a>
</p>
