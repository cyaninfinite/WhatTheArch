# Setup

The setup would be split into a few sections:

* Terminal Setup: During the installation of the OS
* GUI Setup: After GUI has been setup

## Terminal Setup

### Partition

#### Layout

These are the main partitions that are used:

* `/boot`: To store bootloader & related files to boot the OS. GRUB is used as the bootloader.
* `/`: The root directory of the Operating System (OS).
* `/home`: Created a seperate partition for the user `/home` directory, so that the data could be isolated from the system data if anything goes wrong there.
* `swap`: Used when the RAM is full. (Typically matches the amount of RAM one has. For example, if one has a 4GB RAM, a `swap` partition of 4GB is used.) 

#### Setting the partitions

Coming soon...


### User setup

#### Account creation

Coming soon...

#### Adding `superuser` privileges

Coming soon...

## GUI Setup

### Setting up i3

Coming soon...

### Setting screen resolution

Coming soon...

### Setting up Font Awesome

Coming soon...