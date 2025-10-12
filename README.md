# Debian-Termux Setup
Ini adalah file readme versi Inggris jika mau versi indonesia klik [README-IND.md](./README-IND.md).

![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=flat&logo=gnu-bash&logoColor=white)

## About
Easily install and configure Debian GNU/Linux inside Termux (Android) using automated scripts. No root required! Choose between a minimal setup or a full desktop environment (XFCE4,MATE,LXQT,LXDE) with Firefox and Onboard keyboard.

---

## Features
- Automated Debian installation in Termux (no root)
- User creation and sudo setup
- Optional desktop environments: XFCE4 or Cinnamon
- Firefox and Onboard keyboard included for desktop setups
- Simple, step-by-step instructions
- English & Indonesian script language
- Failsafe Feature

---

## Requirements

### Minimum Requirements
- Android 7.0 Nougat or higher
- 2 GB RAM (minimum)
- Stable internet connection
- Sufficient storage (see Desktop Environment options below)

### Software Prerequisites
- Termux (recommended from [F-Droid](https://f-droid.org/id/packages/com.termux/))
- (Optional) Termux X11 for graphical desktop ([Termux X11 releases](https://github.com/termux/termux-x11/releases/tag/nightly))

<details>
<summary><strong>Desktop Environment Options & Download Size</strong></summary>

- <strong>Minimal (no desktop environment):</strong>
  - Only essential packages (sudo, nano, adduser, pulseaudio)
  - Fastest install, smallest download (~50-100 MB)

- <strong>XFCE4 Desktop Environment:</strong>
  - XFCE4, XFCE4 Terminal, Firefox ESR, Onboard
  - Lightweight and suitable for most devices
  - Download size: ~400-600 MB
  - Installed size: ~1.2-1.5 GB

- <strong>LXDE Desktop Environment:</strong>
  - LXDE, Firefox ESR, Onboard
  - Lightweight, classic interface
  - Download size: ~300-500 MB
  - Installed size: ~1-1.2 GB

- <strong>LXQt Desktop Environment:</strong>
  - LXQt, Firefox ESR, Onboard
  - Lightweight, modern interface
  - Download size: ~350-550 MB
  - Installed size: ~1-1.3 GB

- <strong>MATE Desktop Environment:</strong>
  - MATE, Firefox ESR, Onboard
  - Classic, stable interface
  - Download size: ~500-700 MB
  - Installed size: ~1.2-1.7 GB

<em>Actual sizes may vary depending on package updates and mirrors. Ensure you have enough storage and a stable internet connection.</em>
</details>

---

## Screenshots
![Debian on Termux with XFCE4](/debian-termux.jpg)
*Custom Debian setup in Termux with terminal and Onboard keyboard*

---


## Automated Setup (Recommended)

---

This project provides two scripts for a fully automated setup:

### 1. Termux Setup Script
This script updates Termux, installs required packages, and sets up Debian with proot-distro.
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/termux-setup.sh)"
```

### 2. Debian Setup Script
Run this inside the Debian shell to finish setup, create a user, and optionally install a desktop environment.
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian-setup.sh)"
```

---

## Desktop Script Flags

The desktop launcher script (`debian.sh`) supports command-line flags for easier usage:

**Usage:**
```sh
./debian.sh [options]
```

**Options:**
- `-h`, `--help`           Show help message and exit
- `-d N`, `--default N`    Set default desktop environment (N):
    - 1 = XFCE4
    - 2 = LXDE
    - 3 = LXQt
    - 4 = MATE
    - 0 = Minimal (no desktop)

**Examples:**
```sh
./debian.sh -d 1     # Launch with XFCE4 as default
./debian.sh -h       # Show help message
```

---


## If the automation script didn't work you can try the manual method
See [manual/manual.md](./manual/manual.md) for step-by-step manual installation instructions.

---

## Credits
Tutorial by [@Flasherxgapple](https://github.com/Flasherxgapple)

## License
See [LICENSE](./LICENSE) for details.
