# Debian-Termux Setup
This is Indonesian readme file. if u want English click here [README.md](./README.md)

![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=flat&logo=gnu-bash&logoColor=white)

## Tentang Project Ini
Installer Debian GNU/Linux untuk Termux (Android) dengan script. Tanpa Root! Pilih antara Debian minimal atau dengan desktop environment (XFCE4 atau Cinnamon) dengan firefox dan keyboard onboard
---

## Fitur
- Instalasi otomatis Debian di Termux (Tanpa root)
- Pembuatan user dan penyiapan Superuser
- Penginstalan desktop environment: XFCE4 or Cinnamon
- Firefox dan keyboard Onboard sebagai pendukung
- Langkah mudah & interaktif
- Berbahasa Inggris & Indonesia

---

## Persyaratan

### Persyaratan Minimal
- Android 7.0 Nougat atau lebih tinggi
- 2 GB RAM (Minimum)
- Koneksi internet yg stabil
- Penyimpanan yang mencukupi (lihat opsi Desktop Environment dibawah)

### Persyaratan Software
- Termux (Direkomendasikan pemasangan dari [F-Droid](https://f-droid.org/id/packages/com.termux/))
- Termux X11 untuk dukungan grafis (desktop environment) ([Termux X11 releases](https://github.com/termux/termux-x11/releases/tag/nightly))

<details>
<summary><strong>Opsi Desktop Environment & ukuran Download</strong></summary>

- <strong>Minimal (Tanpa desktop environment):</strong>
  - Hanya program yg dibutuhkan (sudo, nano, adduser, pulseaudio)
  - installasi tercepat, download terkecil (~50-100 MB)

- <strong>XFCE4 Desktop Environment:</strong>
  - XFCE4, XFCE4 Terminal, Firefox ESR, Onboard
  - Ringan dan cocok untuk segala perangkat
  - Ukuran Download: ~400-600 MB
  - Ukuran Installasi: ~1.2-1.5 GB

- <strong>Cinnamon Desktop Environment:</strong>
  - Cinnamon, Firefox ESR, Onboard
  - Fitur lebih banyak, Lebih berat juga
  - Ukuran Download: ~700-900 MB
  - Ukuran Installasi: ~2-2.5 GB

<em>Ukuran sebenarnya tergantung repository dan mirror(server) yang digunakan. Pastikan untuk memiliki penyimpana yang cukup dan kecepatan internet yang stabil.</em>
</details>

---

## Screenshots
![Debian on Termux with XFCE4](/debian-termux.jpg)
*Debian di termux dengan xfce4 dan firefox serta onboard*

---


## Setup Otomatis (Disarankan)

Project ini memiliki 2 script untuk dijalankan

### 1. Script Penyiapan Termux
Script ini Mengupdate Termux, Memasang program yg diperlukan, serta memasang Debian
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/termux-setup.sh)"
```

### 2. Script Instalasi Debian
Jalankan script kedua ini didalam shell debian. script ini akan mempersiapkan debian layaknya installer desktop seperti menyiapkan user dan memasang desktop environment
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/flasherxgapple/debian-termux/master/debian-setup.sh)"
```

---


## Jika script otomatis gagal. ada cara manual
Lihat [manual/manual.md](./manual/manual.md) Untuk instruksi langkah-langkah instalasi manual.

---

## Credits
Tutorial & Script oleh [@Flasherxgapple](https://github.com/Flasherxgapple)

## Lisensi
Lihat [LICENSE](./LICENSE)
