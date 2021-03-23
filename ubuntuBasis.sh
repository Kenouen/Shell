#pasta auxiliar temporaria
mkdir /tmp
cd /tmp


#Atualizar repositórios
sudo apt update -y && sudo apt upgrade -y sudo apt autoremove -y


#instalação de programas padrão
for i in logisim wget transmission zsh git curl openjdk-11-jdk-headless openjdk-11-source openjdk-11-dbg openjdk-11-doc openjfx maven sl vsftpd g++ python3-pip inkscape x11-apps chrome-gnome-shell
do
    sudo apt-get -y install > log.txt $i && echo "instalando $i"
done

#Instalação do NodeJS na versão 10x
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install v10.21.0

#Instalação da CLI do Angular
sudo npm install -g @angular/cli

#Instalação de Java 8
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo update-alternatives --config java

#Instalação do Docker e Docker Compose
sudo apt install docker.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



#Configuração do vsftpd
mkdir /home/$USER/vsftpd

#Edição do arquivo .conf
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