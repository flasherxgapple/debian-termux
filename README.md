# debian-termux

TUTORIAL BY FLASHER (Fendi)

This repository is a tutorial how to install a debian on termux with proot-distro (No Root needed)

# installing Termux

First download termux from fdroid. or you can get one from this link

https://f-droid.org/id/packages/com.termux/

Then download termux x11 to display  the desktop (optional, if u want to install graphical desktop environment)
You can find termux x11 app from its release page 

https://github.com/termux/termux-x11/releases/tag/nightly

# setup on termux

- First update your termux

```
pkg update && pkg upgrade
```

- Then install x11 repo

```
pkg install x11-repo
```

- After all of that, Install some needed packages

```
pkg install termux-x11-nightly pulseaudio proot-distro git wget
```

# installing debian 
- install debian linux with this command using proot-distro

```
pd install debian
```
Note: you can install other distro but in this tutorial i gonna use debian because that's the point

- after debian was succesfuly installed you can login into it as root
```
pd login debian
```

# setup debian

- After login into debian GNU/Linux you can update it
Note: this step take a while to be done, i reccomend using stable internet connection

```
apt update && apt upgrade
```

- Install needed packages

```
apt install sudo nano adduser pulseaudio
```
- Setup user

```
adduser user
```
Note: if you asked for password. fill it and remember it. you can leave other as blank

- Root access for user

```
nano /etc/sudoers
```
after that paste this line on a new string
```
user ALL(ALL:ALL) ALL
```

- Then install Desktop Environment,  i use xfce4 this time
Note: this also need stable conectivity
```
apt install xfce4 xce4-terminal
```

- If you want to install a web browser (optional)

```
apt install firefox
```

# last step installing the script
Clone a script from this repository which will run the debian with an xfce4 desktop environment
```
git clone https://github.com/flasherxgapple/debian-termux.git
cd debian-termux
chmod +x debian.sh
mv debian.sh ~/
```

To run it you can use
```
./debian.sh
```



