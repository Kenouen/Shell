#pasta auxiliar temporaria
mkdir /tmp/temp
cd /tmp/temp

#instalação de programas padrão

for i in logisin code wget transmission zsh git curl openjdk-11-jdk-headless openjdk-11-source openjdk-11-dbg openjdk-11-doc openjfx maven sl logisim vsftpd g++ python3-pip inkscape x11-apps
do
    sudo apt-get -y install > txt.txt $i && echo "instalando $i"
done


#Download e instalação das ides

wget -c https://download-cf.jetbrains.com/python/pycharm-professional-2020.1.tar.gz

wget -c https://download-cf.jetbrains.com/idea/ideaIU-2020.1.tar.gz

wget -c https://download-cf.jetbrains.com/cpp/CLion-2020.1.tar.gz

wget -c https://download3.operacdn.com/pub/opera/desktop/68.0.3618.125/linux/opera-stable_68.0.3618.125_amd64.deb

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


sudo tar -xzvf CLion-2020.1.1.tar.gz -C /home/$USER/

sudo tar -xzvf ideaIU-2020.1.tar.gz -C /home/$USER/

sudo tar -xzvf pycharm-professional-2020.1.tar.gz -C /home/$USER/


sudo dpkg -i google*

sudo dpkg -i opera*



#remoção da pasta temporaria
cd ..

sudo rm -r temp

cd

mv clion-* clion

mv idea-* idea

mv pycharm-* pycharm

cd /home/$USER

sudo chown -R $USER clion idea pycharm 


#Icones do Desktop

cd /home/$USER/Desktop

touch Intellij.desktop Clion.desktop Pycharm.desktop

#intellij
echo \
"[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=/usr/share/icons/Papirus/64x64/apps/idea-ultimate.svg
Exec=sh /home/$USER/idea/bin/idea.sh
Name= Intellij
Categories=Development;IDE;
" >> Intellij.desktop

chmod a+x Intellij.desktop

#Clion
echo \
"[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=/usr/share/icons/Papirus/64x64/apps/clion.svg
Exec=sh /home/$USER/clion/bin/clion.sh
Name= Clion
Categories=Development;IDE;
" >> Clion.desktop

chmod a+x Clion.desktop

#Pycharm
echo \
"[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=/usr/share/icons/Papirus/64x64/apps/pycharm-professional.svg
Exec=sh /home/$USER/pycharm/bin/pycharm.sh
Name= Pycharm
Categories=Development;IDE;
" >> Pycharm.desktop

chmod a+x Pycharm.desktop

sudo cp *.desktop /usr/share/applications

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
sudo apt-get update
sudo apt-get install synapse
