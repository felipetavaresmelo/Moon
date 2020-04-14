#!/bin/bash

pass=$1
log_setup=$HOME/ubuntu-setup.log
declare -a progsSnap=("dbeaver-ce" "spotify" "skype --classic" "chromium" "code --classic" "whatsdesk" "telegram-desktop" "slack --classic" "discord" "gimp" "inkscape" "freemind" "filezilla --edge" "postgresql10" "insomnia" "node --classic" "vlc" "gydl")
declare -a progsFlatpak=("com.obsproject.Studio" "peek" "org.gnucash.GnuCash" "org.gnome.Boxes" "org.gimp.GIMP")
declare -a progsAptGet=("synaptic" "git" "brave-browser" "mongodb-org -y" "postgresql postgresql-contrib -y")

declare -a codeExtensions=("dracula-theme.theme-dracula" "PKief.material-icon-theme" "formulahendry.code-runner" "yzhang.markdown-all-in-one" "shd101wyy.markdown-preview-enhanced")


echo "Iniciando instalações de apps com o SNAP:" >> $log_setup
for prog in "${progsSnap[@]}"
do
    echo Installing $prog
    echo -e "$pass\n" | sudo -S snap install $prog -V
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- snap -- $prog instalado com sucesso"  >> $log_setup
done

echo "----------------------------------------------------------------------"

echo "Iniciando instalações de apps com o FLATPAK:" >> $log_setup
sudo apt install flatpak -Y
echo -e "$pass\n" | sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- gnome-software-plugin-flatpak instalado com sucesso"  >> $log_setup

for prog in "${progsFlatpak[@]}"
do
    echo Installing $prog
    echo -e "$pass\n" | sudo -S flatpak install $prog -y
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- flatpak -- $prog instalado com sucesso"  >> $log_setup
done

echo "----------------------------------------------------------------------"

echo "Iniciando instalações de extenssões do VS CODE:" >> $log_setup
for ext in "${codeExtensions[@]}"
do
    echo Installing $ext
    code --install-extension $ext
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- code-extension -- $ext instalado com sucesso"  >> $log_setup
done

echo "----------------------------------------------------------------------"

echo "Iniciando instalações de apps com o APT-GET:" >> $log_setup

# LISTAS DE REPOSITÓRIOS
echo "Registrando repositórios APT:" >> $log_setup
# pacotes auxiliares
sudo apt install apt-transport-https curl wget ca-certificates --fix-broken

# chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório Chrome listado."  >> $log_setup

# brave-browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório brave-browser listado."  >> $log_setup

# Mongo DB
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório mongodb-org listado."  >> $log_setup

# Mongo Compass
# wget https://downloads.mongodb.com/compass/mongodb-compass_1.15.1_amd64.deb
# sudo dpkg -i mongodb-compass_1.15.1_amd64.deb
# echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório mongodb-compass listado."  >> $log_setup

# Postgres
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório Postgres listado."  >> $log_setup


# instalações APT
sudo apt-get dist-upgrade -y
for prog in "${progsAptGet[@]}"
do
    echo Installing $prog
    sudo apt-get update
    echo -e "$pass\n" | sudo -S apt-get install $prog -y -V
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt-get -- $prog instalado com sucesso"  >> $log_setup
done

#backup do log no syslog do linux
logger -p user.info -t "ubuntu-setup" -f $log_setup
