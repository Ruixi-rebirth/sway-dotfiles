
<p align="center" style="margin-bottom:10px;margin-top:10px;"><a><img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"></a></p>

<h2 align="center">
 <b style="font-size:24px;line-height:24px;vertical-align:middle;"><i>Ruixi-rebirth <img src="./show/sway-logo.png" width="36px" style="vertical-align:middle;"> sway-dotfiles</i></b>
</h2>

<p align=center style="margin-top:36px">	  
  <img src="https://img.shields.io/github/stars/Ruixi-rebirth/sway-dotfiles?color=dd864a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/Ruixi-rebirth/sway-dotfiles?color=82aaff&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/Ruixi-rebirth/sway-dotfiles?color=bf616a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues-pr/Ruixi-rebirth/sway-dotfiles?color=c792ea&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/license/Ruixi-rebirth/sway-dotfiles?color=15121C&labelColor=202328&style=for-the-badge">  
</p>
<p align="center"><b>My favorite themes are</b></p>
<p align="center">
<img src="./show/Catppuccin-logo.png" width="34px"> <img src="./show/nord-logo.png" width="34px">
</p>
<p align="center">
<img src="./show/macchiato.png" style="margin-top:20px;" width="400px">
</p>

<p align="center">
<img src="./show/show1.gif" style="margin-top:30px">
</p>


### 🧑🏾‍🎨 ScreenShot

![](./show/show5.png)


<details>
<summary><b>Load More</b> <span style="font-size:14px;">(Click to expend) </span> </summary>

<p align="center"><img src="./show/showfuck.png" width="160px"></p>

![](./show/show9.png)

![](./show/show12.png)

![](./show/show11.png)

![](./show/show6.png)

![](./show/show7.png)

![](./show/show8.png)
</details>

### 🗒️ Info

|Program|Name|
| - | :--: |
|**Window Manager**|[Sway](https://github.com/swaywm/sway)|
|**Terminal Emulator**|[Kitty](https://github.com/kovidgoyal/kitty)|
|**Bar**|[waybar](https://github.com/Alexays/Waybar)|
|**Application Launcher**|[Rofi-wayland](https://github.com/lbonn/rofi)|
|**Notification Daemon**|[Dunst](https://github.com/dunst-project/dunst), [Mako](https://github.com/emersion/mako)|
|**Display Manager**|None|
|**network management tool**|[NetworkManager](https://networkmanager.dev/)|
|**Input method framework**|[Fcitx5](https://github.com/fcitx/fcitx5)|
|**System resource monitor**|[Btop](https://github.com/aristocratos/btop)|
|**File Manager**|[Ranger](https://github.com/ranger/ranger), [Nautilus](https://wiki.gnome.org/action/show/Apps/Files?action=show&redirect=Apps%2FNautilus)|
|**Lockscreen**|[Swaylock-effects](https://github.com/mortie/swaylock-effects)|
|**Shell**|[Fish](https://github.com/fish-shell/fish-shell)|
|**Shell Framework**|[Oh-My-Fish](https://github.com/oh-my-fish/oh-my-fish)|
|**Music Player**|[mpd](https://github.com/MusicPlayerDaemon/MPD), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp), [mpc](https://github.com/MusicPlayerDaemon/mpc), [Netease-cloud-music-gtk](https://github.com/gmg137/netease-cloud-music-gtk)|
|**Media Player**|[mpv](https://github.com/mpv-player/mpv)|
|**Text Editor**|[Neovim](https://github.com/neovim/neovim)|
|**GTK Theme**|[Catppuccin](https://github.com/catppuccin/gtk)|
|**Icons**|[Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)|
|**Fonts**|[Nerd fonts](https://github.com/ryanoasis/nerd-fonts)|
|**Image Viewer**|[imv](https://sr.ht/~exec64/imv/), [feh](https://github.com/derf/feh)|
|**Screenshot Software**|[grimshot](https://github.com/swaywm/sway/blob/master/contrib/grimshot)|
|**Screen Recording**|[wf-recorder](https://github.com/ammen99/wf-recorder), [OBS](https://obsproject.com)|
|**Clipboard**|[wl-clipboard](https://github.com/bugaevc/wl-clipboard)|
### 🔨 Dependencies
#### Packages
  - sway
  - waybar
  - swaybg
  - rofi
  - sway-effects
  - mako
  - pulseaudio
  - light
  - kitty
  - qtstyleplugins
  - mpd
  - mpc
  - ncmpcpp
  - nm-applet
  - grimshot
  - wl-clipboard
  - imv/feh
#### Fonts
  - nerd-fonts noto twemoji noto-cjk
 
### 🚀 Manual Installation
*✒️ Just wrote something that I thought was important!*
1. **Clone this repository**
```bash
 git clone https://github.com/Ruixi-rebirth/sway-dotfiles.git
```
2. **Install the required software**(see [Dependencies](#-dependencies))

3. **Install firefox theme**

> Set **toolkit.legacyUserProfileCustomizations.stylesheets** to **true** in **about:config**
>> Catppuccin 
  ```bash 
   $ cd sway-dotfiles && cp -r chrome.catppuccin $HOME/.mozilla/firefox/*.default-release/
   $ cd $HOME/.mozilla/firefox/*.default-release/ 
   $ mv chrome.catppuccin chrome
  ```

>> Nord 
  ```bash
    $ cd sway-dotfiles && cp -r chrome.nord $HOME/.mozilla/firefox/*.default-release/ 
    $ cd $HOME/.mozilla/firefox/*.default-release/
    $ mv chrome.nord chrome
  ```
4. **Install GTK theme**
> I use the **lxappearance** tool to set gtk themes, mouse styles, icons, etc. Although it will not take effect, it can help me generate **gtk2.0** and **gtk3.0** related configuration files. What really works is **the part of the sway config about setting the gtk theme**,In order to **apply the gtk theme to the qt program**, you should download the **qtstyleplugins** and set the environment variable **QT_QPA_PLATFORMTHEME=gtk2**
>> Catppuccin

```bash
# for a single user 
$ cd sway-dotfiles && cp -r .themes $HOME/
```
### 🔑 Keybinds 
These are the basic keybinds. Read through the sway config for more keybinds.
|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Alt + Enter`          | Launch terminal (kitty)                  |
| `Alt + Shift + Enter`  | Launch floating terminal (kitty)         |
| `Alt + Shift + p`      | Kill focused window                      |
| `Alt + '`              | Set vertical orientation                 |
| `Alt + ;`              | Set horizontal orientation               |
| `Win(Super)`           | Launch Rofi                              |
| `Alt + Win(Super)`     | Launch Poer menu                         |
| `Alt + Shift + x`      | Lock screen                              |
| `Alt + o(is o not 0)`              | Toggle Waybar                            |
| `Alt + Shift + e`      | Exit sway                                |
| `Alt + Shift + c`      | Restart sway                             |

### ⏳ Star History
[![Star History Chart](https://api.star-history.com/svg?repos=Ruixi-rebirth/sway-dotfiles&type=Date)](https://star-history.com/#Ruixi-rebirth/sway-dotfiles&Date)
