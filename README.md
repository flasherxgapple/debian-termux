# debian-termux

TUTORIAL BY [@Flasherxgapple](https://github.com/Flasherxgapple)

This repository is a tutorial how to install a debian on termux with proot-distro (No Root needed)

![screenshot debian on termux with xfce4](/debian-termux.jpg)
My debian with custom setup on termux with terminal and onboard opened

# installing Termux

First download termux from fdroid. or you can get one from this link
https://f-droid.org/id/packages/com.termux/

Or you can get the 0.119.0-beta.3 version from this link 
https://f-droid.org/repo/com.termux_1022.apk

Then download termux x11 to display  the desktop (optional, if u want to install graphical desktop environment)
You can find termux x11 app from its release page 

https://github.com/termux/termux-x11/releases/tag/nightly

# setup on termux

- This step will update your termux, install x11 repository, and install needed packages

```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11-nightly pulseaudio proot-distro git wget
```

# installing debian 
- install debian linux with this command using proot-distro

```
pd install debian
```
Note: you can install other distro but in this tutorial im gonna use debian because that's the point

- after debian was succesfuly installed you can login into it as root user
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

- Install onboard an on screen virtual keyboard (optional)

```
apt install onboard
```

- Install geany a IDE you can use for coding (optional)

```
apt install geany
```

- after finishing debian setup you can exit

```
exit
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



