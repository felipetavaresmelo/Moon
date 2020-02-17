#!/bin/bash
vLog=$1

echo "$(date) -- info -- Início do script" >> $vLog

# Atualizacao de aplicativos nativos
    sudo apt-get update &&
    sudo apt-get dist-upgrade -y &&

    echo "$(date) --info -- Atualizado com sucesso"  >> $vLog

# VSCODE (https://github.com/Microsoft/vscode)
    sudo snap install code --classic

# GIMP (https://www.gimp.org/)
    sudo apt-get install gimp &&

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


# FreeMind (http://freemind.sourceforge.net/wiki/index.php/FreeMind_on_Linux#Install_FreeMind_Manually)

# GnuCash (https://tipsonubuntu.com/2018/07/17/install-gnucash-3-2-ubuntu-18-04-lts/)
    sudo add-apt-repository ppa:sicklylife/gnucash &&
    sudo apt-get install gnucash &&
    
    # Uninstall
    # sudo apt-get purge gnucash -y 
    # sudo apt-get autoremove -y 

# FileZilla (https://www.edivaldobrito.com.br/cliente-ftp-filezilla-no-ubuntu-16-04/)
    sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
    wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install filezilla

    # Uninstall
    # sudo apt-get remove filezilla --auto-remove -y

# OBS Studio (https://www.diolinux.com.br/2016/04/como-instalar-o-open-broadcaster-no-ubuntu-1604.html)
    sudo add-apt-repository ppa:obsproject/obs-studio -y && 
    sudo apt-get update && 
    sudo apt-get install obs-studio -y

    # Uninstall
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

# Postgres (https://tecadmin.net/install-postgresql-server-on-ubuntu/)
    sudo apt-get install wget ca-certificates
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib

# Node.JS (https://tecadmin.net/install-latest-nodejs-npm-on-ubuntu/)
    sudo apt-get install curl
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install nodejs

# Slack
    sudo apt-get update
    sudo apt-get install slack

    # Uninistall
    sudo apt-get purge slack --auto-remove -y

# WhatsAPP
sudo apt-get whatsdesk_whatsdesk -y


# Telegram
    sudo add-apt-repository ppa:atareao/telegram -y
    sudo apt-get update
    sudo apt-get install telegram

    # uninstall
    sudo apt-get purge telegram --auto-remove -y


# Spotfy
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

sudo apt-get purge spotify_spotify --auto-remove -y


# Trello

# VirtualBox

# Stremio

# Thunderbird

# VLC Vídeos

# Skype

# Postman
