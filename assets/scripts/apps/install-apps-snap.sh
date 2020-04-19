#!/bin/bash
pass=$1
log_snap=$HOME/setup-apps-snap.log
declare -a apps_snap=("dbeaver-ce" 
                      "spotify" 
                      "skype --classic" 
                      "chromium" 
                      "code --classic" 
                      "whatsdesk" 
                      "telegram-desktop" 
                      "slack --classic" 
                      "discord" 
                      "inkscape" 
                      "freemind" 
                      "filezilla --edge" 
                      "postgresql10" 
                      "insomnia" 
                      "vlc" 
                      "gydl"
                      "figma-linux")

echo "-------------------------------------------"
echo ">> Iniciando instalações de apps com o SNAP"
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- Iniciando instalações de apps com o SNAP:" >> $log_snap
for app in "${apps_snap[@]}"
do
    echo "-------------------------------------------"
    echo ">> Executando: sudo -S snap install $app -V"
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- snap -- Executando: sudo -S snap install $app -V" >> $log_snap
    echo -e "$pass\n" | sudo -S snap install $app
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- snap -- $app instalado com sucesso"  >> $log_snap
done