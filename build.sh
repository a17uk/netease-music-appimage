#!/bin/sh
source /etc/os-release
if [ $ID_LIKE == "debian" ]
then
    set -x
    sudo apt install --no-install-recommends -y\
            wget appstream desktop-file-utils libpangoft2-1.0-0
    bash pkg2appimage --no-di netease-cloud-music.yml
    #rm -r netease-cloud-music
else 
    echo "构建脚本需要使用dibian系的系统"
fi