#!/bin/bash

# Atualizacao de aplicativos nativos
sudo apt-get update &&
sudo apt-get dist-upgrade -y &&

# VSCODE (https://github.com/Microsoft/vscode)
sudo snap install code --classic

# GIMP (https://www.gimp.org/)
sudo apt-get install gimp &&

# Inkscape (https://wiki.inkscape.org/wiki/index.php/Installing_Inkscape)
sudo apt-get update &&
sudo apt-get install inkscape &&

# Peek - an animated GIF recorder (https://github.com/phw/peek)
sudo add-apt-repository ppa:peek-developers/stable &&
sudo apt update
sudo apt install peek

# Dia ()
sudo apt-get update && 
sudo apt-get install dia && 
sudo dpkg -l dia &&  # confirmar instalacao

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
    # sudo apt-get remove google-chrome-stable


# FreeMind

# GnuCash

# FileZilla

# OBS Studio

# MongoDB

# Postgres

# Node.JS

# Slack

# WhatsAPP

# Telegram

# Spotfy

# Trello

# VirtualBox

# Stremio

# Thunderbird

# VLC Vídeos

# Skype

