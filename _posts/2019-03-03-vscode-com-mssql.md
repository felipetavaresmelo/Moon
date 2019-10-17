---
layout: post
title:  "Visual Stúdio Code com extensão do MS SQL Server no Linux Ubuntu"
date:   2019-03-03
excerpt: "Anotações relacionadas a extensão do Visual Stúdio Code com o Microsoft SQL Server no linux Ubuntu"
tag:
- Visual Studio Code
- Micrososft SQL Server 
- Linux
- Ubuntu
comments: true
sitemap: true
---

## Introdução

<p>É importante lembrar que essas anotações são uteis para utilização no Linux Ubuntu v16.04 LTS pois é o sistema que estou utilizando no momento em que escrevo essa página.<br>De qualquer forma estou a disposição nos comentários para maiores detalhes.</p>

---

## Extensão

Acessar o link e fazer a instalação da extensão aqui: [SQL Server(mssql)](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql)

---

## Configurar no Visual Studio Code

1. Pressione Ctrl+Shift+P ou F1 para abrir a guia de comando.

2. Digite `sql` para aparecer os comandos do mssql, ou digite `sqlcon` e selecione `MS SQL: Conectar` nas opçoes abaixo.

    ![MS SQL: Conectar](https://docs.microsoft.com/en-us/sql/linux/media/sql-server-linux-develop-use-vscode/vscode-commands.png?view=sql-server-2017)

3. Selecione `Create Connection Profile` para criar um novo perfil de conexão no seu SQL Server.

4. Siga as opções para especificar as propriedades do novo perfil de conexão. Depois de especificar cada valor, pressione Enter para continuar.

    1. Nome do servidor: Use localhost para se conectar a uma instância do SQL Server em sua máquina local.
    2. Database name (opcional): pressione Enter para continuar.
    3. Authentication Type: Pressione Enter para selecionar `SQL Login`.
    4. User name: Digite o nome de um usuário com acesso a um banco de dados no servidor. O usuário padrão é `sa`.
    5. Password: Digite a senha do usuário. Senha do usuário padrão criada na instalação do banco de dados.
    6. Save Password: Pressione Enter para selecionar Yes para salvar o password.
    7. Profile Name (optional): Digite um nome para o perfil de conexão, como o padrão localhost.
    8. Verifique sua conexão na barra de status inferior.

        ![Barra de Status](https://docs.microsoft.com/en-us/sql/linux/media/sql-server-linux-develop-use-vscode/vscode-connection-status.png?view=sql-server-2017)

---

## Criar um banco de dados

[Criando um banco de dados](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017#create-a-sql-database)

---

## Criar uma tabela no banco de dados

[Criando tabelas](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017#create-a-table)

---

## Inserindo dados

[Inserindo dados](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017#insert-and-query)

---

## Visualisando dados

[Visualisando dados](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017#view-and-save-the-result)

---

# Azure Data Studio

<p>Outra alternativa à estensão do Visual Studio Code é o aplicativo Azure Data Studio que funciona tanto para um banco de dados local quanto com a nuvem Azure.</p>

Baixe aqui o [Azure Data Studio](https://docs.microsoft.com/pt-br/sql/azure-data-studio/download?view=sql-server-2017)

---

### Fonte

- https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017
- https://docs.microsoft.com/pt-br/sql/azure-data-studio/download?view=sql-server-2017