#!/bin/bash
set -eux
yay -S xrdp xorgxrdp-glamor xorg xterm xorg-twm
echo "allowed_users = anybody" > /etc/X11/Xwrapper.config
systemctl enable --now xrdp xrdp-sesman
