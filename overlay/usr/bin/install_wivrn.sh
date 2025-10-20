#!/usr/bin/env bash

echo "**** Installing/upgrading WiVRn via flatpak ****"

# Install
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
flatpak --user install --assumeyes --or-update flathub install flathub io.github.wivrn.wivrn

echo "DONE"
