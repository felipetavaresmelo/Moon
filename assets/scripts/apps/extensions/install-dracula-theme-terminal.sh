#!/bin/bash
git clone https://github.com/dracula/gnome-terminal &&
cd gnome-terminal &&
./install.sh &&
cd .. &&
rm -f -d -r -v  gnome-terminal