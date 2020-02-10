#!/bin/bash

# Atualizacao de aplicativos nativos
sudo apt-get update &&
sudo apt-get dist-upgrade -y &&

# Instalacao do VSCODE
sudo snap install code --classic

# Instacao do GIMP
sudo apt-get install gimp &&