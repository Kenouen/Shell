#Instalação do lutris


sudo add-apt-repository ppa:graphics-drivers/ppa

sudo dpkg --add-architecture i386 

sudo apt install libvulkan1 libvulkan1:i386

sudo apt install libgl1-mesa-dri:i386

sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386

sudo add-apt-repository ppa:lutris-team/lutris

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

sudo apt-get update

sudo apt-get install --install-recommends winehq-stable

sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386

sudo apt-get update

sudo apt-get upgrade

sudo apt-get install lutris
