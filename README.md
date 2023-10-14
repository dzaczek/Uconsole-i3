# Uconsole-i3
I3 windows manager on Uconsole  device 


## Usage
Feel free to fork and modify this configuration to suit your needs. If you're new to i3 like I , take your time to understand how each section works and tailor it to your preferences.

The base is temple is comming from [icemodding](https://github.com/icemodding/i3) This is my first attempt at working with i3, so please be aware that this project may have bugs, be unfinished, or contain incomplete features.
Enjoy your i3 experience!


## INSTALLATION 
At the moment I'm using  I3-GAPS  [https://github.com/Airblader/i3](https://github.com/Airblader/i3)

### Instalation i3 gaps:
```bash
 apt install dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev

 cd ~/Documents
 # clone the repository
 git clone https://www.github.com/Airblader/i3 i3-gaps
 cd i3-gaps

 # compile
 mkdir -p build && cd build
 meson ..
 sudo ninja
 sudo apt install i3blocks i3status rofi

 ```
open /etc/xdg/lxsession/LXDE-pi/desktop.conf and change windows_manager to i3
```
[Session]
window_manager=i3
```
### Confiure and isntall SuckLess Termianl

```bash
sudo -i 
cd Documnets 
git clone https://github.com/LukeSmithxyz/st
# OR FROM THERE git://git.suckless.org/st
cd st

sudo make install

```

### Copy this configuration gaps 
```bash
cd ~/.config/i3/
git clone  git@github.com:dzaczek/Uconsole-i3.git .
sudo apt install apt-get install maim xclip copyq xdotool
```
