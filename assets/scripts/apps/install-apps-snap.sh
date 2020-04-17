#!/bin/bash
pass=$1
log_snap=$HOME/install-apps-snap.log
declare -a progs_snap=("dbeaver-ce" 
                      "spotify" 
                      "skype --classic" 
                      "chromium" 
                      "code --classic" 
                      "whatsdesk" 
                      "telegram-desktop" 
                      "slack --classic" 
                      "discord" 
                      "gimp" 
                      "inkscape" 
                      "freemind" 
                      "filezilla --edge" 
                      "postgresql10" 
                      "insomnia" 
                      "node --classic" 
                      "vlc" 
                      "gydl")


echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Iniciando instalações de apps com o SNAP:" >> $log_snap
for prog in "${progs_snap[@]}"
do
    echo Instalando $prog
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- snap -- Executando: sudo -S snap install $prog -V" >> $log_snap
    echo -e "$pass\n" | sudo -S snap install $prog -V
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- snap -- $prog instalado com sucesso"  >> $log_snap
done