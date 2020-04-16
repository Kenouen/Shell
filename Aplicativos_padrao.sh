#pasta auxiliar temporaria
mkdir /tmp/temp
cd /tmp/temp

#instalação de programas padrão

sudo apt-get install wget transmission zsh git curl openjdk-11-jdk-headless openjdk-11-source openjdk-11-dbg openjdk-11-doc openjfx maven sl logisim vsftpd g++ python3-pip inkscape x11-apps


#Download e instalação das ides

wget -c https://download-cf.jetbrains.com/python/pycharm-professional-2020.1.tar.gz

wget -c https://download-cf.jetbrains.com/idea/ideaIU-2020.1.tar.gz

wget -c https://download-cf.jetbrains.com/cpp/CLion-2020.1.1.tar.gz

wget -c https://az764295.vo.msecnd.net/stable/26076a4de974ead31f97692a0d32f90d735645c0/code_1.41.1-1576681836_amd64.deb

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


sudo tar -xzvf CLion-2020.1.1.tar.gz -C /home/$USER/

sudo tar -xzvf ideaIU-2020.1.tar.gz -C /home/$USER/

sudo tar -xzvf pycharm-professional-2020.1.tar.gz -C /home/$USER/


sudo dpkg -i google*

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
anon_root=/home/$USER/vsftpd

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
 
#instalação do synapse

sudo add-apt-repository ppa:synapse-core/ppa
sudo apt-get update && sudo apt-get install synapse
