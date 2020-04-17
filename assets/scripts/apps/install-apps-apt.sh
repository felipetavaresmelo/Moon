#!/bin/bash

pass=$1
log_apt=$HOME/install-apps-apt.log

declare -a progs_apt_get=("ruby-full build-essential zlib1g-dev" 
                        "synaptic" 
                        "git" 
                        "brave-browser" 
                        "mongodb-org -y" 
                        "postgresql postgresql-contrib -y" 
                        "curl"
                        )

echo "Iniciando instalações de apps com o APT-GET:" >> $log_apt

# LISTAS DE REPOSITÓRIOS
echo "Registrando repositórios APT:" >> $log_apt
# pacotes auxiliares
sudo apt install apt-transport-https curl wget ca-certificates --fix-broken

# chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório Chrome listado."  >> $log_apt

# brave-browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório brave-browser listado."  >> $log_apt

# Mongo DB
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório mongodb-org listado."  >> $log_apt

# Mongo Compass
# wget https://downloads.mongodb.com/compass/mongodb-compass_1.15.1_amd64.deb
# sudo dpkg -i mongodb-compass_1.15.1_amd64.deb
# echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório mongodb-compass listado."  >> $log_apt

# Postgres
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt -- repositório Postgres listado."  >> $log_apt


# instalações APT
sudo apt-get dist-upgrade -y
for prog in "${progs_apt_get[@]}"
do
    echo Installing $prog
    sudo apt-get update
    echo -e "$pass\n" | sudo -S apt-get install $prog -y -V
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- apt-get -- $prog instalado com sucesso"  >> $log_apt
done