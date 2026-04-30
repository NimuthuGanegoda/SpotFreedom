<p align="center">
  <img src="https://img.shields.io/badge/SpotFreedom-Spotify_%26_YT_Music_Patcher-1DB954?style=for-the-badge&logo=spotify&logoColor=white" alt="SpotFreedom"/>
</p>

<p align="center">
  <a href="https://github.com/NimuthuGanegoda/SpotFreedom"><img src="https://img.shields.io/badge/SpotFreedom-Repository-blue"></a>
  <a href="https://github.com/NimuthuGanegoda/SpotFreedom/releases"><img src="https://img.shields.io/badge/Releases-Latest-green"></a>
  <a href="https://github.com/NimuthuGanegoda/SpotFreedom#faq"><img src="https://img.shields.io/badge/FAQ-Read-orange"></a>
</p>

<h1 align="center">🎵 SpotFreedom 🚀</h1>
<p align="center">
  <b>The Ultimate Patcher for Spotify & YouTube Music Desktop Clients</b>
</p>

<p align="center">
  Enjoy a seamless, ad-free, and highly customizable music experience on your desktop. SpotFreedom bridges the gap between official clients and premium features, giving you total control over your music.
</p>

<p align="center"> •
  <a href="#requirements">📋 Requirements</a> •
  <a href="#perks">✨ Why SpotFreedom?</a> •
  <a href="#features">🔥 Features</a> •
  <a href="#installation--update">💻 Spotify Install</a> •
  <a href="#ytm-installation">📺 YTM Install</a> •
  <a href="#uninstall">🗑️ Uninstall</a> •
  <a href="#faq">❓ FAQ</a> •
  <a href="#disclaimer">⚖️ Disclaimer</a>
</p>

---

<h2 id="requirements">📋 Requirements</h2>

- **🖥️ Operating System:** Windows 7 or later / Linux / macOS
- **🎧 Spotify Client:** [Official Spotify Desktop Application](https://loadspot.pages.dev) (Microsoft Store version NOT supported)
- **🎶 YouTube Music:** [th-ch/youtube-music](https://github.com/th-ch/youtube-music) (Supported via integrated script)
- **🐚 Shells:** PowerShell 5.1+ (Windows) or Bash (Linux/macOS)
- **🌐 Internet:** Required for initial installation and periodic updates

---

<h2 id="perks">✨ Why SpotFreedom?</h2>

SpotFreedom provides a unified, professional-grade experience for the world's leading music platforms:

- **🚫 Advanced Ad-Blocking:** Powered by BlockTheSpot's proven DLL injection for Spotify.
- **🎥 YouTube Music Integration:** Native support for the best unofficial YTM client with ad-blocking and SponsorBlock.
- **🔄 Smart Updates:** Automatically verifies compatibility with the latest Spotify versions.
- **🌍 Global Access:** Built-in proxy support for restricted environments (Windows).
- **🎨 Visual Mastery:** Seamlessly integrates with Spicetify for unlimited Spotify themes.
- **🧹 System Integrity:** Auto-cleanup logic keeps your workspace lean and mean.

---

<h2 id="features">🔥 Features</h2>

- **✅ Zero Ads:** Blocks banner, video, and audio ads in both Spotify and YouTube Music.
- **🏠 Clean UI:** Hide podcasts, episodes, and distracting sections from your home screen.
- **⏹️ Update Control:** Take command of when (and if) your clients update.
- **📀 Enhanced YTM:** Built-in downloader (MP3/Opus) and Discord Rich Presence.
- **⚡ Performance:** Lightweight patching methods designed for power users.

---

<h2 id="installation--update">💻 Installation / Update (Spotify)</h2>

<h3>Choose your flavor:</h3>

<details>
<summary><b>🎨 Usual Installation (Modern Theme)</b></summary>
<br>
Features the latest theme with revamped sidebars and full experimental features.
<br><br>

**Windows (PowerShell):**
```ps1
iex "& { $(irm 'https://raw.githubusercontent.com/NimuthuGanegoda/SpotFreedom/main/run.ps1') } -new_theme"
```

**Direct Download:** [Install_New_theme.bat](https://raw.githack.com/NimuthuGanegoda/SpotFreedom/main/Install_New_theme.bat)
</details>

<details>
<summary><b>📜 Usual Installation (Classic Theme)</b></summary>
<br>
Forced installation of v1.2.13 to preserve the classic Spotify UI.
<br><br>

**Windows (PowerShell):**
```ps1
iex "& { $(irm 'https://raw.githubusercontent.com/NimuthuGanegoda/SpotFreedom/main/run.ps1') } -v 1.2.13.661.ga588f749 -confirm_spoti_recomended_over -block_update_on"
```

**Direct Download:** [Install_Old_theme.bat](https://raw.githack.com/NimuthuGanegoda/SpotFreedom/main/Install_Old_theme.bat)
</details>

<details>
<summary><b>🚀 Full Automatic Installation</b></summary>
<br>
Zero-confirmation install. Removes MS Store version, applies all patches, and launches the client.
<br><br>

**Windows (PowerShell):**
```ps1
iex "& { $(irm 'https://raw.githubusercontent.com/NimuthuGanegoda/SpotFreedom/main/run.ps1') } -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_off -block_update_on -start_spoti -new_theme -adsections_off -lyrics_stat spotify"
```

**Direct Download:** [Install_Auto.bat](https://raw.githack.com/NimuthuGanegoda/SpotFreedom/main/scripts/Install_Auto.bat)
</details>

<br>

### 🐧 Linux & 🍎 macOS (Spotify)
Run the following command in your terminal:
```bash
./spotx.sh
```

---

<h2 id="ytm-installation">📺 Installation / Update (YouTube Music)</h2>

To install or update the ad-free YouTube Music Desktop App on **Linux**, simply run:

```bash
./ytmusic.sh
```

*This script fetches the latest [Pear Desktop](https://github.com/pear-devs/pear-desktop) (formerly th-ch) release and ensures a clean, ad-free installation.*

---

<h2 id="uninstall">🗑️ Uninstalling</h2>

- **Windows:** Run [Uninstall.bat](https://raw.githack.com/NimuthuGanegoda/SpotFreedom/main/Uninstall.bat)
- **General:** A full re-install of the official client is recommended for a complete reversion.

---

<h2 id="faq">❓ FAQ</h2>

Please refer to the repository's documentation and open issues for common troubleshooting steps.

---

<h2 id="disclaimer">⚖️ Disclaimer</h2>

SpotFreedom is a modification tool provided for educational and evaluation purposes. Use it at your own risk. This project is not affiliated with Spotify or Google.

<p align="center">
  Developed with 🖤 by <a href="https://github.com/NimuthuGanegoda">Nimuthu Ganegoda</a>
</p>
