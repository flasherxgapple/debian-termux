#!/bin/bash
set -e

echo "Termux setup for debian-termux by Flasher"

read -p "Do you want to continue with the setup? (y/n): " choice
if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
  echo "Setup aborted by the user."
  exit 0
fi

echo "Updating and upgrading packages..."
pkg update && pkg upgrade -y

echo "Installing X11 repository..."
pkg install x11-repo -y

echo "Installing Termux X11, PulseAudio, Proot-Distro, Git, and Wget..."
pkg install termux-x11-nightly pulseaudio proot-distro git wget -y

echo "Cloning the repo to get the xfce4 debian script"
git clone https://github.com/flasherxgapple/debian-termux.git
cd debian-termux
chmod +x debian.sh
mv debian.sh ~/
cd

echo "------------------------------------------------------------------"
echo "WARNING: There is a second script that must be run inside the"
echo "Debian shell after this installation completes."
echo "------------------------------------------------------------------"

echo "Installing Debian..."
proot-distro install debian

echo "This termux session will enter proot-distro debian environment"
sleep 5
proot-distro login debian

echo "Installation complete."
