#!/bin/bash
pass=$1
log_extensions_code=$HOME/install-extensions-code.log

declare -a extensions_code=("dracula-theme.theme-dracula" 
                           "PKief.material-icon-theme" 
                           "formulahendry.code-runner" 
                           "yzhang.markdown-all-in-one" 
                           "shd101wyy.markdown-preview-enhanced"
                        )


echo "Iniciando instalações de extenssões do VS CODE:" >> $log_extensions_code
for extension in "${extensions_code[@]}"
do
    echo Installing $extension
    code --install-extension $extension
    echo "$(date '+%Y/%m/%d-%H:%M:%S:%N') -- INFO -- code-extension -- $extension instalado com sucesso"  >> $log_extensions_code
done