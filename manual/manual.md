# Manual Installation Method for Debian-Termux

If the automation script does not work, you can follow these manual steps to set up Debian in Termux.

---

## 1. Prepare Termux
Update and upgrade packages, install X11 repo and required packages:
```sh
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11-nightly pulseaudio proot-distro git wget
```

## 2. Install Debian
```sh
proot-distro install debian
proot-distro login debian
```

## 3. Inside Debian: Initial Setup
Update and install essential packages:
```sh
apt update && apt upgrade -y
apt install sudo nano adduser pulseaudio
```

Create a new user:
```sh
adduser user
```
Grant sudo access:
```sh
echo 'user ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user
chmod 0440 /etc/sudoers.d/user
```

## 4. Desktop Environment (Optional)
- XFCE4:
  ```sh
  apt install xfce4 xfce4-terminal firefox-esr onboard
  ```
- LXDE:
  ```sh
  apt install lxde firefox-esr onboard
  ```
- LXQt:
  ```sh
  apt install lxqt firefox-esr onboard
  ```
- MATE:
  ```sh
  apt install mate-desktop-environment firefox-esr onboard
  ```

## 5. Exiting Debian
```sh
exit
```

## 6. Adding Desktop Launcher Script (If you installed a Desktop Environment)
Choose your preferred language for the launcher:

- **English version:**
  ```sh
  curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian-en.sh -o ~/debian.sh
  chmod +x ~/debian.sh
  ```
- **Indonesian version:**
  ```sh
  curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian-ind.sh -o ~/debian.sh
  chmod +x ~/debian.sh
  ```

### Using Launcher Script Flags

You can use flags to control the launcher script:

**Usage:**
```sh
./debian.sh [options]
```

**Options:**
- `-h`, `--help`           Show help message and exit (English) / Tampilkan pesan bantuan (Indonesian)
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

For more details and troubleshooting, refer to the main README or open an issue on GitHub.
