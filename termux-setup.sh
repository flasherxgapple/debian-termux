#!/bin/bash
set -e

# Language selection/Pemilihan bahasa
echo "Select language / Pilih bahasa:"
echo "1) English"
echo "2) Indonesia"
read -p "Enter your choice [1/2]: " lang_choice
if [[ "$lang_choice" != "1" && "$lang_choice" != "2" ]]; then
  echo "Invalid choice. Defaulting to English."
  lang_choice=1
fi

if [[ "$lang_choice" == "2" ]]; then
  echo "============================================================"
  echo "Selamat datang di installer Debian-Termux"
  echo "Script ini akan menyiapkan Termux untuk instalasi debian."
  echo "Pembuat: Flasher/Efendi"
  echo "Github: github.com/flasherxgapple"
  echo "============================================================"

  read -p "lanjutkan penyiapan instalasi? (y/t): " choice
  if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
    echo "Setup dibatalkan atas permintaan pengguna."
    exit 0
  fi

  echo ">>> Memperbarui dan mengupgrade Termux..."
  pkg update && pkg upgrade -y

  echo ">>> Menambahkan repositori X11..."
  pkg install x11-repo -y

  echo ">>> Memasang program yg dibutuhkan: Termux X11, PulseAudio, Proot-Distro, Git, dan Wget..."
  pkg install termux-x11-nightly pulseaudio proot-distro git wget -y

  echo ">>> Mengunduh script desktop (debian.sh) dari repositori..."
  curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian.sh -o ~/debian.sh
  chmod +x ~/debian.sh

  echo "------------------------------------------------------------------"
  echo "PENTING: Setelah script penyiapan ini selesai, jalankan script installer kedua di dalam shell Debian."
  echo "Silakan ikuti instruksi di README untuk langkah selanjutnya."
  echo "------------------------------------------------------------------"

  echo ">>> Menginstal Debian..."
  proot-distro install debian

  echo ">>> Masuk ke shell Debian..."
  sleep 5
  proot-distro login debian

  echo ">>> Setup selesai! Debian telah terinstal :3"
  echo "Flasher :3"
else
  echo "============================================================"
  echo "Welcome to the Debian-Termux automated setup by Flasher!"
  echo "This script will prepare your Termux environment and install Debian GNU/Linux."
  echo "Created by Flasher/Efendi"
  echo "Github: github.com/flasherxgapple"
  echo "============================================================"

  read -p "Do you want to continue with the setup? (y/n): " choice
  if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
    echo "Setup aborted by user request."
    exit 0
  fi

  echo ">>> Updating and upgrading Termux packages..."
  pkg update && pkg upgrade -y

  echo ">>> Adding the X11 repository..."
  pkg install x11-repo -y

  echo ">>> Installing required packages: Termux X11, PulseAudio, Proot-Distro, Git, and Wget..."
  pkg install termux-x11-nightly pulseaudio proot-distro git wget -y

  echo ">>> Downloading the desktop launch script (debian.sh) from the repository..."
  curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian.sh -o ~/debian.sh
  chmod +x ~/debian.sh

  echo "------------------------------------------------------------------"
  echo "IMPORTANT: After this script completes, you must run the second setup script inside the Debian shell."
  echo "Please follow the instructions in the README for the next steps."
  echo "------------------------------------------------------------------"

  echo ">>> Installing Debian..."
  proot-distro install debian

  echo ">>> Entering the Debian environment..."
  sleep 5
  proot-distro login debian

  echo ">>> Setup complete! You now have Debian Installed :3"
  echo "Flasher :3"

fi
