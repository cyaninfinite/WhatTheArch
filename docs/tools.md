
# Software/Tools
These are installed seperately apart from the base installation, which is quite barebone.

## Essential

Typically, these should be installed during the installation/setup process.

| Tool | Description | Installation |
| :--: | :--- | :--- |
| sudo | Gives user `superuser` permision to perform task. `sudo` does **not** come preinstalled, need to be installed and setup manually for the user. | `pacman -S sudo` |
| vim | A terminal text editor, would be used to edit file configuration during the installation process. | `pacman -S vim` |
| nmtui | A terminal application to configure IP network, useful for setting up network connection via terminal (before GUI is installed.) | `pacman -S networkmanager` |

## Terminal

Terminal related packages.

| Tool | Description | Installation |
| :--: | :--- | :--- |
| tmux | A terminal multiplexer. | `pacman -S tmux` |
| htop | An interactive process viewer. | `pacman -S htop` |
| zsh | Alternative to `bash` shell, this is actually optional. | `pacman -S zsh zsh-completions`

## Development

Development packages.

Tool | Description | Installation     
:--: |:--- | :---              
git | A distributed version control system for tracking changes in source code during software development. | `pacman -S git`    
curl | A command-line tool and library for transferring data with URLs. It supports various protocols such as HTTP, HTTPS, FTP, and more. | `pacman -S curl`   
wget | A command-line utility for downloading files from the web. It supports downloading via HTTP, HTTPS, and FTP protocols, with options for recursive downloads and more. | `pacman -S wget`
rust | A multi-paradigm programming language developed by Mozilla. | [Setup](#dev-rust)

### <a name="dev-rust">Rust</a>

Setup via installation script.
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## GUI

Graphical User Interface (GUI) related packages.

* [lightdm](#gui-lightdm)
* [xrandr](#gui-xrandr)
* [feh](#gui-feh)
* [i3](#gui-i3)
* [i3lock-color](#gui-lock)
* [polybar](#gui-polybar)
* [rofi](#gui-rofi)
* [terminator](#gui-terminator)
* [firefox](#gui-firefox)

### <a name="gui-lightdm">lightdm</a>
X display manager, used to launch `i3`.

The greeter is used to login into the i3 session.

```bash
sudo pacman -S lightdm lightdm-gtk-greeter
```

Enable the service.
```bash
sudo systemctl enable lightdm.service
```

After that, start the service.
```bash
sudo systemctl start lightdm.service
```

### <a name="gui-xrandr">xrandr</a>
Used to set screen resolution.

```bash
pacman -S xrandr
```

**Getting display names**

Get the name of the display and the supported reolution to set.

```bash
xrandr
```

**Setting the resolution**

For example, setting a display output of `1280x720` for `Display-1`.

```bash
xrandr --output Display-1 --mode 1280x720
```

### <a name="gui-feh">feh</a>

Lightweight image viewer, used to set the background wallpaper for `i3`.

### <a name="gui-i3">i3</a>

> https://github.com/i3/i3

A tiling window manager.

Install the i3 package.

> **Note:** `i3` is a metapackage that would install the other packages (`i3-wm`, `i3blocks`, `i3lock`, `i3status`), install them all!

```bash
sudo pacman -S i3
```

### <a name="gui-lock">i3lock-color</a>

> https://github.com/Raymo111/i3lock-color

Replacement for `i3lock`, which looks much better that the default lockscreen.

### <a name="gui-polybar">Polybar</a>

> https://github.com/polybar/polybar

Replacement for `i3` status bar, which allows for a ton of customization.

### <a name="gui-rofi">Rofi</a>

> https://github.com/davatorium/rofi

Replacement for `i3 dmenu`, a dynamic menu to start applications.

> **Note:** Ensure that [`yay`](https://www.howtogeek.com/how-to-install-and-use-yay-on-arch-linux/) is setup beforehand!

### <a name ="gui-terminator">Terminator</a>
A terminal emulator for GUI.

```bash
pacman -S terminator
```

### <a name="gui-firefox">Firefox</a>
A web browser.
```bash
pacman -S firefox
```
