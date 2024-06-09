# WhatTheArch

<a href="LICENSE" ><img src="https://img.shields.io/github/license/cyaninfinite/WhatTheArch?style=for-the-badge"/></a>


A documentation of the my journey with Arch Linux.

> **Note:** This is a work in progress, the content and layout are subject to change significantly.

```sh
                   -`
                  .o+`
                 `ooo/
                `+oooo:
               `+oooooo:
               -+oooooo+:
             `/:-:++oooo+:
            `/++++/+++++++:
           `/++++++++++++++:
          `/+++ooooooooooooo/`
         ./ooosssso++osssssso+`
        .oossssso-````/ossssss+`
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 `

  _      ____        __ ________       ___           __ 
 | | /| / / /  ___ _/ //_  __/ /  ___ / _ | ________/ / 
 | |/ |/ / _ \/ _ `/ __// / / _ \/ -_) __ |/ __/ __/ _ \
 |__/|__/_//_/\_,_/\__//_/ /_//_/\__/_/ |_/_/  \__/_//_/
                                                        
Version 0.1.0
 ```

## Support Me

If you find my work helpful or valuable, consider supporting me by donating or leaving a tip. Your contribution helps me continue creating and improving projects like this one.

<a href='https://ko-fi.com/Q5Q7Z4F89' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Installation

1. Download the [ISO image](https://archlinux.org/download/).
2. Flash it to a thumbdrive. (Or load the image into a virtual machine)
3. [Follow the installation guide](https://wiki.archlinux.org/title/Installation_guide)


## Partitions

These are the main partitions that are used:

* `/boot`: To store bootloader & related files to boot the OS. GRUB is used as the bootloader.
* `/`: The root directory of the Operating System (OS).
* `/home`: Created a seperate partition for the user homoe directory, so that the data could be isolated from the system data if anything goes wrong there.
* `swap`: Used when the RAM is full. (Typically matches the amount of RAM one has. For example, if one has a 4GB RAM, a `swap` partition of 4GB is used.) 

## Software/Tools
These are installed seperately apart from the base installation, which is quite barebone.

### Essential

Typically, these should be installed during the installation/setup process.

| Tool | Description | Installation |
| :--: | :--- | :--- |
| sudo | Gives user `superuser` permision to perform task. `sudo` does **not** come preinstalled, need to be installed and setup manually for the user. | `pacman -S sudo` |
| vim | A terminal text editor, would be used to edit file configuration during the installation process. | `pacman -S vim` |
| nmtui | A terminal application to configure IP network, useful for setting up network connection via terminal (before GUI is installed.) | `pacman -S networkmanager` |

### Terminal

Terminal related packages.

| Tool | Description | Installation |
| :--: | :--- | :--- |
| tmux | A terminal multiplexer. | `pacman -S tmux` |
| htop | An interactive process viewer. | `pacman -S htop` |
| zsh | Alternative to `bash` shell, this is actually optional. | `pacman -S zsh zsh-completions`

### Development

Development packages.

Tool | Description | Installation     
:--: |:--- | :---              
git | A distributed version control system for tracking changes in source code during software development. | `pacman -S git`    
curl | A command-line tool and library for transferring data with URLs. It supports various protocols such as HTTP, HTTPS, FTP, and more. | `pacman -S curl`   
wget | A command-line utility for downloading files from the web. It supports downloading via HTTP, HTTPS, and FTP protocols, with options for recursive downloads and more. | `pacman -S wget`
rust | A multi-paradigm programming language developed by Mozilla. | [Setup](#dev-rust)

#### <a name="dev-rust">Rust</a>

Setup via installation script.
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### GUI

Graphical User Interface (GUI) related packages.

* [lightdm](#gui-lightdm)
* [feh](#gui-feh)
* [i3](#gui-i3)
* [i3lock-color](#gui-lock)
* [polybar](#gui-polybar)
* [rofi](#gui-rofi)
* [terminator](#gui-terminator)
* [firefox](#gui-firefox)

#### <a name="gui-lightdm">lightdm</a>
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

#### <a name="gui-feh">feh</a>

Lightweight image viewer, used to set the background wallpaper for `i3`.

#### <a name="gui-i3">i3</a>

> https://github.com/i3/i3

A tiling window manager.

Install the i3 package.

> **Note:** `i3` is a metapackage that would install the other packages (`i3-wm`, `i3blocks`, `i3lock`, `i3status`), install them all!

```bash
sudo pacman -S i3
```

#### <a name="gui-lock">i3lock-color</a>

> https://github.com/Raymo111/i3lock-color

Replacement for `i3lock`, which looks much better that the default lockscreen.

#### <a name="gui-polybar">Polybar</a>

> https://github.com/polybar/polybar

Replacement for `i3` status bar, which allows for a ton of customization.

#### <a name="gui-rofi">Rofi</a>

> https://github.com/davatorium/rofi

Replacement for `i3 dmenu`, a dynamic menu to start applications.

> **Note:** Ensure that [`yay`](https://www.howtogeek.com/how-to-install-and-use-yay-on-arch-linux/) is setup beforehand!

#### <a name ="gui-terminator">Terminator</a>
A terminal emulator for GUI.

```bash
pacman -S terminator
```

#### <a name="gui-firefox">Firefox</a>
A web browser.
```bash
pacman -S firefox
```

## Basics

### Package Manager: `pacman`
`pacman` is a package manager of Arch Linux. (Similar to `apt` in Debian/Ubuntu)

* Installing package(s): `pacman -S [pkg1] [pkg2] ...`
* Removing package(s): `pacman -R [pkg1]`
* Updating repo database: `pacman -Sy`
* Updating repo database + upgrade packages: `pacman -Syu`
* Search for package: `pacman -Ss [pkg1]`

### Network / IP

Display network interfaces.
```bash
ip a
```

# License
Licensed under the [MIT License](./LICENSE).