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


#Configuração do vsftpd

#Criação do diretório padrão
mkdir /home/$USER/vsftpd

sudo rm /etc/vsftpd.conf

sudo echo \
"
anon_root=/home/$USER/ftp

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





 
