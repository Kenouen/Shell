
#Script para instalar o mysql 8.0


mkdir temp
cd temp

wget -c https://repo.mysql.com//mysql-apt-config_0.8.14-1_all.deb

sudo dpkg -i mysql-apt-config_0.8.14-1_all.deb

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

sudo apt install mysql-server


sudo mysql_secure_installation

sudo systemctl enable mysql

sudo systemctl status mysql

sudo apt install mysql-workbench-community

cd ..

sudo rm -r temp
