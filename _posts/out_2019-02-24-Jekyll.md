---
layout: post
title:  "Jekyll"
date:   2019-02-24
excerpt: "Anotações relacionadas ao Jekyll"
tag:
- Jekyll 
comments: true
sitemap: true
---

# Introdução

É importante lembrar que essas anotações são uteis para utilização no Linux Ubuntu v16.04 LTS pois é o sistema que estou utilizando no momento em que escrevo essa página.
Espero que também possa ajudar alguém com essas anotações, de qualquer forma estou a disposição nos comentários para maiores detalhes.

# Instalação do Jekyll

Para a instalação do Jekyll no Ubuntu 16.04 LTS eu utilizei os comandos abaixo.

Para instalar as dependências:

```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
```

Para configurar as variáveis de ambiente e o Ruby Gems em sua conta de usuário.

```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Para instalar o Jekyll:

```bash
gem install jekyll bundler
```

## Links importantes

- [Jekyll](https://jekyllrb.com/)
- [Jekyll Installation in Ubunto Linux 16.04 LTS](https://jekyllrb.com/docs/installation/ubuntu/)
