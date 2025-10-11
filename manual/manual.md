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
- Cinnamon:
  ```sh
  apt install cinnamon firefox-esr onboard
  ```

## 5. Exiting Debian
```sh
exit
```

## 6. Adding Desktop Script (If u install Desktop Environment)
```curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian.sh -o ~/debian.sh
chmod +x ~/debian.sh```

---

For more details and troubleshooting, refer to the main README or open an issue on GitHub.
