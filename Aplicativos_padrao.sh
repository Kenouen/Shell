#pasta auxiliar temporaria
mkdir /home/$USER/Desktop/temp
cd /home/$USER/Desktop/temp

#instalação de programas padrão

sudo apt-get install wget transmission zsh git curl openjdk-11-jdk-headless openjdk-11-source openjdk-11-dbg openjdk-11-doc openjfx maven sl logisim vsftpd g++ python3-pip inkscape x11-apps



#Download e instalação das ides

wget -c https://download-cf.jetbrains.com/python/pycharm-professional-2019.3.tar.gz

wget -c https://download-cf.jetbrains.com/idea/ideaIU-2019.3.tar.gz

wget -c https://download-cf.jetbrains.com/cpp/CLion-2019.3.1.tar.gz

wget -c https://download.virtualbox.org/virtualbox/6.1.2/virtualbox-6.1_6.1.2-135662~Ubuntu~bionic_amd64.deb

wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb

wget -c https://az764295.vo.msecnd.net/stable/26076a4de974ead31f97692a0d32f90d735645c0/code_1.41.1-1576681836_amd64.deb

sudo tar -xzvf CLion-2019.3.1.tar.gz -C /home/$USER/

sudo tar -xzvf ideaIU-2019.3.tar.gz -C /home/$USER/

sudo tar -xzvf pycharm-professional-2019.3.tar.gz -C /home/$USER/


sudo dpkg -i discord*

sudo dpkg -i virtualbox*

sudo dpkg -i code*


#remoção da pasta temporaria
cd ..

sudo rm -r temp

cd

mv clion-* clion

mv idea-* idea

mv pycharm-* pycharm

cd /home/$USER

sudo chown -R $USER clion idea pycharm 
#Configuração do vsftpd

#Criação do diretório padrão
mkdir vsftpd

sudo rm /etc/vsftpd.conf

sudo echo \
"
anon_root=/home/$USER/vsftp

listen=YES

anonymous_enable=YES

local_enable=YES

dirmessage_enable=YES

use_localtime=YES

xferlog_enable=YES

connect_from_port_20=YES

secure_chroot_dir=/var/run/vsftpd/empty

pam_service_name=vsftpd

rsa_cert_file=/etc/ssl/private/vsftpd.pem
" >> /etc/vsftpd.conf


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

 
