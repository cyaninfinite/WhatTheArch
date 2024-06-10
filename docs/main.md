# Overview

## Installation

1. Download the [ISO image](https://archlinux.org/download/).
2. Flash it to a thumbdrive. (Or load the image into a virtual machine)
3. [Follow the installation guide](https://wiki.archlinux.org/title/Installation_guide)


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

## Setup

The various setup guides are located [here](./setup.md).


## Tools & Packages

The list of tools/packages used in the setup are located [here](./tools.md).