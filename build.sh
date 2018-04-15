#!/bin/sh
set -x
sudo apt install --no-install-recommends -y\
         wget appstream desktop-file-utils libpangoft2-1.0-0
bash pkg2appimage --no-di netease-cloud-music.yml