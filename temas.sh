#!bin/bash

sudo cd /tmp

#binata cursor

git clone https://github.com/KaizIqbal/Bibata_Cursor.git
cd Bibata_Cursor/
chmod +x build.sh
./build.sh
chmod +x ./install.sh
sudo ./install.sh

#Icones numix-circle

sudo add-apt-repository ppa:numix/ppa
#plank dock
sudo add-apt-repository -y ppa:ricotz/docky

sudo apt update

sudo apt install numix-icon-theme-circle

sudo apt-get install plank

#wallpaper

wget -c https://drive.google.com/a/academico.ifpb.edu.br/uc\?authuser\=1\&id\=11X0up1WwHA_O4HkNvJ9ZC4HK8Yk_xxVn\&export\=download 

mv uc?* wallpaper.jpg

mv wallpaper /home/$USER/Pictures

sudo gsettings set org.gnome.desktop.background picture-uri "/home/$USER/Pictures/wallpaper.jpg"


#Temas de Ze

git clone https://github.com/Joshaby/Adapta-Colorpack.git

cd Adapta-Colorpack && ./Install.sh

git clone https://github.com/Joshaby/Adapta-Nord.git

cd Adapta-Nord && ./Install.sh

