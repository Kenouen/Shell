#pasta auxiliar temporaria
mkdir /home/$USER/Desktop/temp
cd /home/$USER/Desktop/temp

#instalação de programas padrão

sudo apt-get install wget transmission zsh git curl openjdk-11-jdk-headless openjdk-11-source openjdk-11-dbg openjdk-11-doc openjfx maven sl logisim vsftpd g++ code



#Download e instalação das ides

wget -c https://download-cf.jetbrains.com/python/pycharm-professional-2019.3.tar.gz

wget -c https://download-cf.jetbrains.com/idea/ideaIU-2019.3.tar.gz

wget -c https://download-cf.jetbrains.com/cpp/CLion-2019.3.1.tar.gz

wget -c https://download.virtualbox.org/virtualbox/6.0.14/virtualbox-6.0_6.0.14-133895~Debian~stretch_amd64.deb

wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb


sudo tar -xzvf CLion-2019.3.1.tar.gz -C /home/$USER/

sudo tar -xzvf ideaIU-2019.3.tar.gz -C /home/$USER/

sudo tar -xzvf pycharm-professional-2019.3.tar.gz -C /home/$USER/


sudo dpkg -i discord-0.0.9.deb

sudo dpkg -i virtualbox-6.0_6.0.14-133895~Debian~stretch_amd64.deb


#remoção da pasta temporaria
cd ..

sudo rm -r temp

cd

mv clion-* clion

mv idea-* idea

mv pycharm-* pycharm

#Download e instalação do oh my zsh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
