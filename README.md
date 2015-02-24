shingonoide/archlinux-busybox
======

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://registry.hub.docker.com/u/shingonoide/archlinux-python2/)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Python is a widely used general-purpose, high-level programming language.

`python2` and `pip2` FROM `archlinux-busybox` minimal image

## Usage

### Pull image to your docker

    docker pull shingonoide/archlinux-python2

### Run a container with bash

    docker run -it shingonoide/archlinux-python2 bash

### base-devel to get development tools

If you need the base-devel group to compile anything, recommended way is install and remove after compilation:

    pacman -Sy --needed --noconfirm base-devel

After compile, remove all base-devel packages of your image:

    pacman -R $(pacman -Sg base-devel | awk '{print $2}') && rm /var/cache/pacman/pkg/*


## Details

* This image uses `python2` and `python2-pip` packages to supports python 2.7 version.

## License

The scripts in this repo are released under the MIT License. See the bundled LICENSE file for details.
