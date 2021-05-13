#Download e instalação do oh my zsh

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

sudo apt-get install -y zsh curl git byobu

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#plugins
git clone https://github.com/zsh-users/zsh-autosuggestions /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


#Fonts base
mkdir /home/$USER/.fonts

cd /home/$USER/.fonts

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf

wget -c https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf


# instalando o p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k

#atualizando o .zshrc
rm /home/$USER/.zshrc

echo \
"export ZSH=\"/home/$USER/.oh-my-zsh\"

ZSH_THEME=\"powerlevel10k/powerlevel10k\"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source \$ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH=\$PATH:/home/$USER/idea/bin:/home/$USER/clion/bin:/home/$USER/pycharm/bin

_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true

" >> /home/$USER/.zshrc

#atualizando o byobu
rm /home/$USER/.byobu/.tmux.conf

echo "set -g terminal-overrides 'xterm*:smcup@:rmcup@'" >> /home/$USER/.byobu/.tmux.conf


echo "Após a instalação, mudar a fonte padrão do terminal para a fonte 'MesloLGS NF Regular'"
