#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

echo "Debian setup for debian-termux by Flasher"

# ------------------------------------------------------------------
# This script automates the setup of a Debian environment for Termux.
# ------------------------------------------------------------------

echo ">>> Updating and upgrading Debian packages..."
echo "This may take a while. Please ensure you have a stable internet connection."
apt update && apt upgrade -y

echo ">>> Installing necessary packages: sudo, nano, adduser, pulseaudio..."
apt install -y sudo nano adduser pulseaudio

echo ">>> Setting up a new user..."
echo "You will be prompted to create a new user named 'user'."
echo "Please enter a password when asked and remember it."
echo "You can leave the other fields (Full Name, etc.) blank by pressing Enter."
adduser user

echo ">>> Granting root access to the new user..."
# Create a new sudoers file for the user, which is safer than editing /etc/sudoers directly.
echo 'user ALL=(ALL:ALL) ALL' >/etc/sudoers.d/user
chmod 0440 /etc/sudoers.d/user
echo "User 'user' has been granted sudo privileges."

echo ">>> Installing XFCE4 Desktop Environment and Terminal..."
echo "This will also take some time and requires a stable internet connection."
apt install -y xfce4 xfce4-terminal

echo ">>> Installing optional packages..."

# Install Firefox web browser
echo "Installing Firefox..."
apt install -y firefox-esr

# Install Onboard (on-screen keyboard)
echo "Installing Onboard..."
apt install -y onboard

# Install Geany (IDE)
echo "Installing Geany..."
apt install -y geany

echo "-----------------------------------------------------------------------------------------"
echo ">>> Debian setup is complete!. you can run xfce4 from script in termux home directory"
echo "You can now exit the Debian shell by typing 'exit'."
echo "-----------------------------------------------------------------------------------------"
