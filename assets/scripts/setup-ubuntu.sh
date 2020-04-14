#!/bin/bash
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Início do script" >> $LOG_SETUP &&

# Inicializar variaveis
LOG_SETUP=$HOME/ubuntu-setup.log &&
EXT=0
PROJECTS=$HOME/projects

# Criar pastas padrão
if [ ! -d $PROJECTS ]; then  #"Directory $PROJECTS doesn't exists" 
	mkdir $PROJECTS &&
fi 

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Pastas padrão criadas"  >> $LOG_SETUP &&

#Lista de aplicativos SNAP
snap list &&

# Atualizacao de aplicativos
sudo apt-get update &&
sudo apt-get dist-upgrade -y &&

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Aplicativos nativos atualizados"  >> $LOG_SETUP &&

# Chromium (https://www.chromium.org/)
sudo snap install chromium &&

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Chromium instalado com sucesso"  >> $LOG_SETUP &&


# git (https://git-scm.com/download/linux)
sudo apt-get install git -Y &&

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- git instalado com sucesso"  >> $LOG_SETUP &&

# VSCODE (https://github.com/Microsoft/vscode)
sudo snap install code --classic &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- code instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension dracula-theme.theme-dracula &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: dracula-theme.theme-dracula) instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension PKief.material-icon-theme &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: PKief.material-icon-theme) instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension formulahendry.code-runner &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: formulahendry.code-runner) instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension rogalmic.bash-debug &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: rogalmic.bash-debug) instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension yzhang.markdown-all-in-one &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: yzhang.markdown-all-in-one) instalado com sucesso"  >> $LOG_SETUP &&

code --install-extension shd101wyy.markdown-preview-enhanced &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- (code-extension: shd101wyy.markdown-preview-enhanced) instalado com sucesso"  >> $LOG_SETUP &&

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- code-extensions instalado com sucesso"  >> $LOG_SETUP &&


# WhatsAPP [quebrado]
sudo snap install whatsdesk &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- whatsdesk instalado com sucesso"  >> $LOG_SETUP &&

# Telegram (https://desktop.telegram.org/)
sudo snap install telegram-desktop &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- telegram-desktop instalado com sucesso"  >> $LOG_SETUP &&

    # uninstall (quebrado)
    # sudo snap remove telegram-desktop

# Slack
sudo snap install slack --classic &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- slack instalado com sucesso"  >> $LOG_SETUP &&

    # Uninistall
    # sudo snap remove slack

# Discord
sudo snap install discord &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- discord instalado com sucesso"  >> $LOG_SETUP &&

    # unistall
    # sudo snap remove whatsdesk

# GIMP (https://www.gimp.org/)
sudo snap install gimp &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- gimp instalado com sucesso"  >> $LOG_SETUP &&

    # Uninstall
    # sudo apt-get purge gimp --auto-remove -y

# Inkscape (https://wiki.inkscape.org/wiki/index.php/Installing_Inkscape)
sudo apt-get update && sudo apt-get install inkscape &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- inkscape instalado com sucesso"  >> $LOG_SETUP &&

logger "inkscape instalado com sucesso"
    # uninstall
    # sudo apt-get purge inkscape --auto-remove -y

# Trello (https://gist.github.com/iPublicis/925c5f4b27e73ec771868be87d16ffbd) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FALHA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# sudo wget https://github.com/danielchatfield/trello-desktop/releases/download/v0.1.9/Trello-linux-0.1.9.zip -O trello.zip &&
# sudo mkdir /opt/trello &&
# sudo unzip trello.zip -d /opt/trello/ &&
# sudo rm  trello.zip &&
# sudo ln -sf /opt/trello/Trello /usr/bin/trello &&
# echo -e '[Desktop Entry]\n Version=1.0\n Name=Trello\n Exec=/usr/bin/trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop &&
# sudo chmod +x /usr/share/applications/trello.desktop &&

# echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Trello instalado com sucesso"  >> $LOG_SETUP &&


    # unistall
    # sudo rm -rf /opt/trello &&
    # sudo rm /usr/bin/trello &&
    # sudo rm /usr/share/applications/trello.desktop &&


# Peek - an animated GIF recorder (https://github.com/phw/peek)
    sudo add-apt-repository ppa:peek-developers/stable -y &&
    sudo apt update &&
    sudo apt install peek -y &&

    # uninstall
    # sudo apt-get purge peek --auto-remove -y

# Dia (http://elinuxbook.com/install-dia-diagram-editor-dia-editor-in-ubuntu-16-04-a-open-source-visio-alternative-for-linux/)
    sudo apt-get update &&
    sudo apt-get install dia -y &&
    sudo dpkg -l dia && # confirmar instalacao

    # uninstall
    # sudo apt-get purge dia --auto-remove -y
    # sudo apt-get remove dia --auto-remove -y
    # sudo apt-get autoremove -y

# Chrome 
    # Fonte:
    # https://askubuntu.com/questions/780474/why-doesnt-the-chrome-dev-channel-upgrade-chrome-via-apt-get-upgrade-anymore
    # https://www.edivaldobrito.com.br/como-instalar-o-google-chrome-39-no-linux/

    # Instacao
    # wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && # Setup key
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && # Setup repository
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && # Setup key
    sudo apt-get update &&
    sudo apt-get install google-chrome-stable && # Setup package
    # sudo apt-get install google-chrome-unstable && # Setup package

    # Chrome (atualizacoes)
    # sudo apt update && sudo apt upgrade

    # Chrome (desistalar)
    # sudo apt-get purge google-chrome-stable --auto-remove -y
    # sudo apt-get autoremove -y

# Brave Browser (https://brave-browser.readthedocs.io/en/latest/installing-brave.html#linux)

sudo apt install apt-transport-https curl &&
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - &&
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser &&


# FreeMind (http://freemind.sourceforge.net/wiki/index.php/FreeMind_on_Linux#Install_FreeMind_Manually)
sudo snap install freemind &&
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- freemind instalado com sucesso"  >> $log_setup

    #unistall
    # sudo snap remove freemind&&

# GnuCash (https://tipsonubuntu.com/2018/07/17/install-gnucash-3-2-ubuntu-18-04-lts/)
sudo add-apt-repository ppa:sicklylife/gnucash &&
sudo apt-get install gnucash &&

sudo snap install gnucash-jz &&
    
    # Uninstall
    # sudo snap remove gnucash-jz &&
    # sudo apt-get purge gnucash -y 
    # sudo apt-get autoremove -y 

# FileZilla (https://www.edivaldobrito.com.br/cliente-ftp-filezilla-no-ubuntu-16-04/)
sudo snap install filezilla --edge &&

    # Uninstall
    # sudo snap remove filezilla

# OBS Studio (https://www.diolinux.com.br/2016/04/como-instalar-o-open-broadcaster-no-ubuntu-1604.html)
sudo snap install obs-studio

    # Uninstall
    # sudo snap remove obs-studio

    # sudo apt-get purge obs-studio -y 
    # sudo apt-get autoremove -y 

# MongoDB (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

    # use systemd
    # Start
    # sudo systemctl start mongod
    # auto reload
    # sudo systemctl daemon-reload
    # status
    # sudo systemctl status mongod
    # stop
    # sudo systemctl stop mongod
    # restart
    # sudo systemctl restart mongod
    # using mongodb
    # mongo

    # use System V init
    # Start
    # sudo service mongod start
    # Status
    # sudo service mongod status
    # stop
    # sudo service mongod stop
    # restart
    # sudo service mongod restart
    # using mongodb
    # mongo

    # uninstall
    # sudo service mongod stop
    # sudo apt-get purge mongodb-org* -y
    # sudo rm -r /var/log/mongodb
    # sudo rm -r /var/lib/mongodb
    # sudo apt-get autoremove -y

# MongoDB Compass (https://stackoverflow.com/questions/53122804/mongodb-compass-cannot-be-opened-in-ubuntu-18-10)
    apt-get update &&
    wget https://downloads.mongodb.com/compass/mongodb-compass_1.15.1_amd64.deb &&
    sudo dpkg -i mongodb-compass_1.15.1_amd64.deb &&
    sudo apt --fix-broken install &&
    sudo apt -y install libgconf2-4 &&
    mongodb-compass &&

    # Uninstall
    # sudo apt-get purge mongodb-compass -y
    # sudo apt-get autoremove -y

# Postgres (https://tecadmin.net/install-postgresql-server-on-ubuntu/) # test fail
    sudo apt-get install wget ca-certificates
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib -y

    snap install postgresql10

# Node.JS (https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions)
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - &&
sudo apt-get install -y nodejs &&

snap install node --classic

echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- nodejs instalado com sucesso "  >> $LOG_SETUP &&

    # Uninstall
    # sudo apt-get purge nodejs --auto-remove -y # test ok

# Maria DB


# dbeaver
    sudo snap install dbeaver-ce

# Spotfy [quebrado] (https://websiteforstudents.com/install-spotify-linux-client-on-ubuntu-16-04-18-04-desktop/)
    sudo snap remove spotify

    # unistall
    # sudo snap remove spotify

# VirtualBox (https://websiteforstudents.com/installing-virtualbox-5-2-ubuntu-17-04-17-10/)
    sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
    sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list'
    sudo apt-get update
    sudo apt-get install virtualbox-5.2
    curl -O http://download.virtualbox.org/virtualbox/5.2.0/Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack
    sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack


# Boxes VM

sudo -S flatpak install org.gnome.Boxes -y

# Stremio


# VLC Vídeos  
sudo snap install vlc

echo "$(date +%D-%T-%N) -- info -- vlc instalado com sucesso"  >> $LOG_SETUP &


# Skype
    sudo snap install skype --classic

# Postman
    sudo snap install postman

# Insomnia (https://insomnia.rest/)
    sudo snap install insomnia

# Epson printer

# BOX Drive

# soapui

# youtube-dl
sudo snap install youtube-dl

# youtube-dl-gui (https://github.com/MrS0m30n3/youtube-dl-gui)



# stacer( https://oguzhaninan.github.io/Stacer-Web/ ) (quebrado)
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer
# uninstall

# Android Studio
    sudo snap install android-studio --classic

    #uninstall
    sudo snap remove android-studio 

# KVM


# JAVA JDK and JRE
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

# Apache Tomcat (https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804)
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp
curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
cd /etc/systemd/system&&sudo curl -O https://felipetavaresmelo.github.io/assets/properties/tomcat.service
sudo systemctl daemon-reload
sudo systemctl start tomcat
#sudo systemctl status tomcat


# https://snapcraft.io/store

# https://appimage.org/
## https://www.appimagehub.com/

# https://flatpak.org/
## https://flathub.org/home


https://linuxhint.com/uninstall-debian-packages/

unset LOG_SETUP # excluir variável
exit $EXT