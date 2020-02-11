#!/bin/bash

# Atualizacao de aplicativos nativos
sudo apt-get update &&
sudo apt-get dist-upgrade -y &&

# Instalacao do VSCODE (https://github.com/Microsoft/vscode)
sudo snap install code --classic

# Instacao do GIMP (https://www.gimp.org/)
sudo apt-get install gimp &&

# Peek - an animated GIF recorder (https://github.com/phw/peek)
sudo add-apt-repository ppa:peek-developers/stable &&
sudo apt update
sudo apt install peek