#Download e instalação do oh my zsh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


sudo git clone https://github.com/zsh-users/zsh-autosuggestions /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions

mkdir /home/$USER/.fonts

cd /home/$USER/.fonts

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf



sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k

sudo rm /home/$USER/.zshrc

sudo echo \
"export ZSH=\"/home/$USER/.oh-my-zsh\"

ZSH_THEME=\"powerlevel10k/powerlevel10k\"

plugins=(git zsh-autosuggestions)

source \$ZSH/oh-my-zsh.sh

export PATH=\$PATH:/home/$USER/idea/bin:/home/$USER/clion/bin:/home/$USER/pycharm/bin
" >> /home/$USER/.zshrc
