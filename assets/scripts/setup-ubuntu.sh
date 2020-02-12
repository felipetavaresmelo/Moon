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