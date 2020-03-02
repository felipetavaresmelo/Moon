#!/bin/bash
vLog=$1

echo "$(date) -- info -- Início do script" >> $vLog

#Lista de aplicativos SNAP
    snap list
# Atualizacao de aplicativos nativos
    sudo apt-get update &&
    sudo apt-get dist-upgrade -y &&

    echo "$(date) --info -- Atualizado com sucesso"  >> $vLog


# VSCODE (https://github.com/Microsoft/vscode)
    sudo snap install code --classic

# GIMP (https://www.gimp.org/)
    sudo snap install gimp
    # Uninstall
    
    # sudo apt-get purge gimp --auto-remove -y

# Inkscape (https://wiki.inkscape.org/wiki/index.php/Installing_Inkscape)
    sudo apt-get update &&
    sudo apt-get install inkscape &&

    # uninstall
    # sudo apt-get purge inkscape --auto-remove -y

# Peek - an animated GIF recorder (https://github.com/phw/peek)
    sudo add-apt-repository ppa:peek-developers/stable -y &&
    sudo apt update
    sudo apt install peek -y

    # uninstall
    # sudo apt-get purge peek --auto-remove -y

# Dia (http://elinuxbook.com/install-dia-diagram-editor-dia-editor-in-ubuntu-16-04-a-open-source-visio-alternative-for-linux/)
    sudo apt-get update && 
    sudo apt-get install dia -y && 
    sudo dpkg -l dia &&  # confirmar instalacao

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

    sudo apt install apt-transport-https curl

    curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    sudo apt update

    sudo apt install brave-browser


# FreeMind (http://freemind.sourceforge.net/wiki/index.php/FreeMind_on_Linux#Install_FreeMind_Manually)
    sudo snap install freemind
    #unistall
    sudo snap remove freemind

# GnuCash (https://tipsonubuntu.com/2018/07/17/install-gnucash-3-2-ubuntu-18-04-lts/)
    sudo add-apt-repository ppa:sicklylife/gnucash &&
    sudo apt-get install gnucash &&

    sudo snap install gnucash-jz
    
    # Uninstall
    sudo snap remove gnucash-jz
    # sudo apt-get purge gnucash -y 
    # sudo apt-get autoremove -y 

# FileZilla (https://www.edivaldobrito.com.br/cliente-ftp-filezilla-no-ubuntu-16-04/)
    # sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
    # wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
    # sudo apt-get update
    # sudo apt-get install filezilla

    sudo snap install filezilla --edge
    # Uninstall
    sudo snap remove filezilla

# OBS Studio (https://www.diolinux.com.br/2016/04/como-instalar-o-open-broadcaster-no-ubuntu-1604.html)
    sudo snap install obs-studio

    # Uninstall
    sudo snap remove obs-studio

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
    mongodb-compass; 

    # Uninstall
    # sudo apt-get purge mongodb-compass -y
    # sudo apt-get autoremove -y

# Postgres (https://tecadmin.net/install-postgresql-server-on-ubuntu/) # test fail
    sudo apt-get install wget ca-certificates
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib -y

# Node.JS (https://tecadmin.net/install-latest-nodejs-npm-on-ubuntu/)
    sudo apt-get install curl
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - # teste fail

    sudo apt-get install nodejs -y # test ok

    sudo apt-get purge nodejs --auto-remove -y # test ok

# Maria DB


# dbeaver
    sudo snap install dbeaver-ce

# Slack
    sudo snap install slack --classic
    # Uninistall
    sudo snap remove slack

# WhatsAPP [quebrado]
    sudo snap install whatsdesk
    # unistall
    sudo snap remove whatsdesk

# Telegram (https://desktop.telegram.org/)
    sudo snap install telegram-desktop

    # uninstall (quebrado)
    sudo snap remove telegram-desktop
# Discord
    sudo snap install discord

# Spotfy [quebrado] (https://websiteforstudents.com/install-spotify-linux-client-on-ubuntu-16-04-18-04-desktop/)
    sudo snap remove spotify

    # unistall
    sudo snap remove spotify

# Trello (https://gist.github.com/iPublicis/925c5f4b27e73ec771868be87d16ffbd)

    sudo wget https://github.com/danielchatfield/trello-desktop/releases/download/v0.1.9/Trello-linux-0.1.9.zip -O trello.zip &&
    sudo mkdir /opt/trello &&
    sudo unzip trello.zip -d /opt/trello/ &&
    sudo rm  trello.zip &&
    sudo ln -sf /opt/trello/Trello /usr/bin/trello &&
    echo -e '[Desktop Entry]\n Version=1.0\n Name=Trello\n Exec=/usr/bin/trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop &&
    sudo chmod +x /usr/share/applications/trello.desktop &&

    # unistall
    sudo rm -rf /opt/trello &&
    sudo rm /usr/bin/trello &&
    sudo rm /usr/share/applications/trello.desktop &&

# VirtualBox (https://websiteforstudents.com/installing-virtualbox-5-2-ubuntu-17-04-17-10/)
    sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
    sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list'
    sudo apt-get update
    sudo apt-get install virtualbox-5.2
    curl -O http://download.virtualbox.org/virtualbox/5.2.0/Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack
    sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack



# Stremio

# Thunderbird

# VLC Vídeos  
  sudo snap install vlc

# Skype
  sudo snap install skype --classic

# Postman
  sudo snap install postman

# Epson printer

# BOX Drive

# soapui

# youtube-dl
sudo snap install youtube-dl


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


# JAVA JDK
sudo apt install default-jdk -y

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
cd /etc/systemd/system & sudo curl -O https://felipetavaresmelo.github.io/assets/properties/tomcat.service
sudo systemctl daemon-reload
sudo systemctl start tomcat
#sudo systemctl status tomcat




# https://snapcraft.io/store

# https://appimage.org/
## https://www.appimagehub.com/

# https://flatpak.org/
## https://flathub.org/home


https://linuxhint.com/uninstall-debian-packages/
