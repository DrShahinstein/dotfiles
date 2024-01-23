// https://gist.github.com/Elteoremadebeethoven/31414afc75bd5970f24af3f314e7d448

# Compile i3 on Linux Mint (Ubuntu distros)
## Install dependencies:

```
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
                 libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
                 libstartup-notification0-dev libxcb-randr0-dev \
                 libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
                 libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
                 autoconf libxcb-xrm0 libxcb-xrm-dev automake \
                 libxcb-shape0-dev pkg-config meson
```

## Install git

```
sudo apt install git
```

## install dmenu

```
sudo apt install suckless-tools
```

## install i3

```
https://i3wm.org/downloads/
```

```
tar xvf ...
cd i3...
mkdir build
cd build
meson ..
ninja
sudo ninja install
```

## install i3blocks

```
git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
sudo make install
```

## create .xinitrc

```
exec i3
```

## Add i3 to xsession

```
sudo vim /usr/share/xsessions/i3.desktop
```

```
[Desktop Entry]
Name=i3
Comment=improved dynamic tiling window manager
Exec=i3
TryExec=i3
Type=Application
X-LightDM-DesktopName=i3
DesktopNames=i3
Keywords=tiling;wm;windowmanager;window;manager;
```

## Fix cursor .Xresources

```
Xcursor.size:	24
```

## Add GTK themes and curso 

```
sudo apt install lxappearance
```

## Install fonts:

```
https://gist.github.com/Elteoremadebeethoven/8309ab77a24b77cbb3f3a253c3ede0d4
```

## Add your i3 config

```
https://github.com/Elteoremadebeethoven/i3-config
```

## Add your i3blocks config

```
https://github.com/Elteoremadebeethoven/i3blocks-config
```

