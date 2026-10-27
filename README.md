# ffmpeg-minimal

Minimal video encoder using FFmpeg with a clean terminal GUI for casual users.
Available in English and French.

---

## ✨ Features

- **Interactive GUI:** Zero CLI flags needed, fully driven by a beautiful terminal interface via `fzf`.
- **Multilingual:** Seamless support for French (`fr`) and English (`en`).
- **Smart Encoders:** Optimized argument setups for **AV1 (libsvtav1)**, **H.264 (libx264)**, and **H.265 (libx265)**.
- **Advanced Audio Handling:** Automated matrix downmixing (AC3/DTS → 5.1/Stereo) and multi-stream mapping.
- **Universal Presets:** Includes "Max Compatibility" (H.264+AC3) and "Modern Efficiency" (AV1+Opus) presets.
- **Rock-Stable Progress Bar:** Dynamic updates via a named pipe (`mkfifo`) that tracks real-time progress, accurate dynamic ETA, and calculated output file size without flooding your terminal history.
- **Batch Processing:** Dedicated mode to format an entire directory of audio files in one shot.

---

## 📦 Installation

### Manual Installation (Arch Linux / Universal)

Since the AUR registrations are currently frozen, you can clone and install this tool locally in seconds:

```bash
git clone https://github.com/Valtis-Rixus/ffmpeg-minimal.git
cd ffmpeg-minimal
makepkg -si
```

### From AUR repository

*(Available once AUR registrations reopen for new maintainers)*

---

## ⚙️ Interactive Menus

Instead of complex flags, `ffmpeg-minimal` will guide you through a step-by-step process using `fzf`:

1. **Language Selection:** Choose between French and English on launch.
2. **Operation Mode:** Select between *Encode a single video*, *Concatenate videos*, or *Format an audio folder*.
3. **File Discovery:** Dynamically browse your storage drives (`/mnt`, `/home`) for target media.
4. **Preset / Custom Configuration:** Select a quick-profile or manually fine-tune your video codec, target container (`.mkv` / `.mp4`), and audio output.
5. **Quality Profiling:** Set your target compression density (*Low*, *Medium*, *High*, *Ultra*).

---

## 📚 Dependencies

This tool requires the following packages to be installed on your system:

- `bash` (Version 4.0+)
- `ffmpeg` (For decoding and encoding)
- `mkvtoolnix-cli` (Required for perfect subtitle and stream concatenation via `mkvmerge`)
- `fzf` (For the interactive command-line interface)
- `awk` (Standard text processor for calculating progress parameters)

On **Arch Linux**, you can install all dependencies with:
```bash
sudo pacman -S ffmpeg fzf mkvtoolnix-cli
```

---

## 👤 Author

Developed by **Sylvain Guillot**
Hérouville‑Saint‑Clair, Normandie, France
License: MIT

---

## ❤️ Thanks

- Thanks to the Arch Linux community and advanced users who will help improve this encoder.
- Thanks to the FFmpeg developers.
- Thanks to the fzf developers for creating a powerful yet minimal cross‑platform tool that fits perfectly with the Arch philosophy.
