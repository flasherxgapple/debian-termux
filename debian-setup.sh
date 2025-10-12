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
  # ==========================================================
  #                 INDONESIAN SETUP BLOCK
  # ==========================================================

  echo "============================================================"
  echo "Selamat datang di Script installer Debian-Termux!"
  echo "Script ini akan menginstall sistem Debian di Termux."
  echo "script ini memiliki panduan untuk membuat user dan dapat memilih untuk menginstal desktop environment."
  echo "Pastikan Anda memiliki koneksi internet yang stabil selama proses berlangsung."
  echo "Pembuat: Flasher/Efendi"
  echo "Github: github.com/flasherxgapple"
  echo "============================================================"
  sleep 3

  echo ">>> Memperbarui dan mengupgrade Debian..."
  echo "Proses ini mungkin memakan waktu. Pastikan koneksi internet Anda stabil."
  apt update && apt upgrade -y

  echo ">>> Menginstal program penting: sudo, nano, adduser, pulseaudio..."
  apt install -y sudo nano adduser pulseaudio

echo ">>> Membuat user baru..."
if id "user" &>/dev/null; then
  echo "User sudah ada dan akan digunakan."
else
  echo "Anda akan diminta untuk membuat user baru bernama 'user'."
  echo "Silakan masukkan password saat diminta dan ingatlah password tersebut."
  echo "Anda dapat melewati kolom lain (Nama Lengkap, dll.) dengan menekan Enter."
  adduser user
fi


  echo ">>> Memberikan akses root ke user baru..."
  echo 'user ALL=(ALL:ALL) ALL' >/etc/sudoers.d/user
  chmod 0440 /etc/sudoers.d/user
  echo "User 'user' telah diberikan hak sudo/root."

echo "============================================================"
echo "Opsi Desktop Environment:"
echo "  1) Minimal (tanpa desktop environment)"
echo "  2) XFCE4 Desktop Environment (Ukuran kecil & ringan)"
echo "  3) LXDE Desktop Environment (Ringan & klasik)"
echo "  4) LXQt Desktop Environment (Ringan & modern)"
echo "  5) MATE Desktop Environment (Klasik & stabil)"
echo "============================================================"
echo "Untuk desktop environment, Firefox dan Onboard (keyboard virtual) akan diinstal otomatis."
echo "Pilih opsi dengan memasukkan angka yang sesuai (1, 2, 3, 4, atau 5):"
read -p "Masukkan pilihan Anda [1/2/3/4/5]: " de_choice
echo
case "$de_choice" in
  2)
    echo ">>> Menginstal XFCE4 Desktop Environment dan Terminal..."
    apt install -y xfce4 xfce4-terminal
    echo "Menginstal Firefox..."
    apt install -y firefox-esr
    echo "Menginstal Onboard (keyboard virtual)..."
    apt install -y onboard
    ;;
  3)
    echo ">>> Menginstal LXDE Desktop Environment..."
    apt install -y lxde
    echo "Menginstal Firefox..."
    apt install -y firefox-esr
    echo "Menginstal Onboard (keyboard virtual)..."
    apt install -y onboard
    ;;
  4)
    echo ">>> Menginstal LXQt Desktop Environment..."
    apt install -y lxqt
    echo "Menginstal Firefox..."
    apt install -y firefox-esr
    echo "Menginstal Onboard (keyboard virtual)..."
    apt install -y onboard
    ;;
  5)
    echo ">>> Menginstal MATE Desktop Environment..."
    apt install -y mate-desktop-environment
    echo "Menginstal Firefox..."
    apt install -y firefox-esr
    echo "Menginstal Onboard (keyboard virtual)..."
    apt install -y onboard
    ;;
  *)
    echo "Setup minimal dipilih. Tidak ada desktop environment yang diinstal."
    ;;
esac


  sleep 3

  echo "============================================================"
  echo ">>> Instalasi Debian selesai!"
  echo "Anda dapat keluar dari shell Debian dengan mengetik 'exit'."
  echo "Untuk desktop environment, Anda mungkin perlu memulai desktop env secara manual."
  echo "Atau menggunakan script yg telah diinstall dari script pertama"
  echo "ketik "./debian.sh" di termux untuk membuka desktop environment"
  echo "Lihat README untuk detail lebih lanjut."
  echo "Flasher :3"
  echo "============================================================"

else
  # ==========================================================
  #                   ENGLISH SETUP BLOCK
  # ==========================================================

  echo "============================================================"
  echo "Welcome to the Debian-Termux Setup Script!"
  echo "This script will help you set up a secure Debian environment on Termux."
  echo "You'll be guided through user creation and can optionally install a desktop environment."
  echo "Please make sure you have a stable internet connection throughout the process."
  echo "Created by Flasher/Efendi"
  echo "Github: github.com/flasherxgapple"
  echo "============================================================"
  sleep 3

  echo ">>> Updating and upgrading Debian packages..."
  echo "This may take a while. Please ensure you have a stable internet connection."
  apt update && apt upgrade -y

  echo ">>> Installing essential packages: sudo, nano, adduser, pulseaudio..."
  apt install -y sudo nano adduser pulseaudio

echo ">>> Setting up a new user..."
if id "user" &>/dev/null; then
  echo "User already exists and will be used."
else
  echo "You will be prompted to create a new user named 'user'."
  echo "Please enter a password when asked and remember it."
  echo "You can leave the other fields (Full Name, etc.) blank by pressing Enter."
  adduser user
fi


  echo ">>> Granting root access to the new user..."
  echo 'user ALL=(ALL:ALL) ALL' >/etc/sudoers.d/user
  chmod 0440 /etc/sudoers.d/user
  echo "User 'user' has been granted sudo privileges."

echo "============================================================"
echo "Desktop Environment Options:"
echo "  1) Minimal (no desktop environment)"
echo "  2) XFCE4 Desktop Environment (Small size & Lightweight)"
echo "  3) LXDE Desktop Environment (Lightweight & Classic)"
echo "  4) LXQt Desktop Environment (Lightweight & Modern)"
echo "  5) MATE Desktop Environment (Classic & Stable)"
echo "============================================================"
echo "For desktop environments, Firefox and Onboard (on-screen keyboard) will be installed automatically."
echo "Choose an option by entering the corresponding number (1, 2, 3, 4, or 5):"
read -p "Enter your choice [1/2/3/4/5]: " de_choice
echo
case "$de_choice" in
  2)
    echo ">>> Installing XFCE4 Desktop Environment and Terminal..."
    apt install -y xfce4 xfce4-terminal
    echo "Installing Firefox..."
    apt install -y firefox-esr
    echo "Installing Onboard (on-screen keyboard)..."
    apt install -y onboard
    ;;
  3)
    echo ">>> Installing LXDE Desktop Environment..."
    apt install -y lxde
    echo "Installing Firefox..."
    apt install -y firefox-esr
    echo "Installing Onboard (on-screen keyboard)..."
    apt install -y onboard
    ;;
  4)
    echo ">>> Installing LXQt Desktop Environment..."
    apt install -y lxqt
    echo "Installing Firefox..."
    apt install -y firefox-esr
    echo "Installing Onboard (on-screen keyboard)..."
    apt install -y onboard
    ;;
  5)
    echo ">>> Installing MATE Desktop Environment..."
    apt install -y mate-desktop-environment
    echo "Installing Firefox..."
    apt install -y firefox-esr
    echo "Installing Onboard (on-screen keyboard)..."
    apt install -y onboard
    ;;
  *)
    echo "Minimal setup selected. No desktop environment will be installed."
    ;;
esac


  sleep 3

  echo "============================================================"
  echo ">>> Debian setup is complete!"
  echo "You can now exit the Debian shell by typing 'exit'."
  echo "For desktop environments, you may need to start the graphical session manually."
  echo "or with "debian.sh" script from the preparation script"
  echo "Refer to the README for more details."
  echo "Flasher :3"
  echo "============================================================"

fi 
