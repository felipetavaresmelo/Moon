---
layout: post
title:  "MS SQL Server no Linux Ubuntu"
date:   2019-03-03
excerpt: "Anotações relacionadas ao Microsoft SQL Server no linux Ubuntu"
tag:
- Micrososft SQL Server 
- Linux
- Ubuntu
comments: true
sitemap: true
---

## Introdução

<p>É importante lembrar que essas anotações são uteis para utilização no Linux Ubuntu v16.04 LTS pois é o sistema que estou utilizando no momento em que escrevo essa página.<br>De qualquer forma estou a disposição nos comentários para maiores detalhes.</p>

---

## Requisitos do sistema

<p>SQL Server 2017 tem os seguintes requisitos de sistema para Linux:</p>

| | |
|--------:|:------------|
|**Memória:** |2 GB|
|**Sistema de Arquivos:**|XFS ou EXT4 (outros sistemas de arquivos, como BTRFS, não têm suporte)|
|**Espaço em disco:**|6 GB|
|**Velocidade do processador:**|2 GHz|
|**Núcleos de processador:**|2 núcleos|
|**Tipo de processador:**|compatível com x64 somente|
| |Fonte: [microsoft.com](https://docs.microsoft.com/pt-br/sql/linux/sql-server-linux-setup?view=sql-server-2017#system)|

---

## Instalação do pacote SQL server

Para a instalação do SQL Server Express no Ubuntu 16.04 LTS eu utilizei os comandos abaixo.

1. Importe as chaves GPG repositório público

    ```bash
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    ```

2. Registre o repositório do Microsoft SQL Server Ubuntu:

    ```bash
    sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
    ```

3. Execute os seguintes comandos para instalar o SQL Server:

    ```bash
    sudo apt-get update
    ```

    ```bash
    sudo apt-get install -y mssql-server
    ```

4. Após a conclusão da instalação do pacote, execute mssql-conf setup e siga os prompts para definir a senha de SA e escolha sua edição.

    ```bash
    sudo /opt/mssql/bin/mssql-conf setup
    ```

5. Quando a configuração estiver concluída, verifique se o serviço está em execução:

    ```bash
    systemctl status mssql-server
    ```

---

## Instalar as ferramentas de linha de comando do SQL Server

1. Importe as chaves GPG repositório público.

    ```bash
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    ```

2. Registre o repositório Microsoft Ubuntu.

    ```bash
    curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
    ```

3. Atualize a lista de fontes e execute o comando de instalação com o pacote de desenvolvedor do unixODBC.

    ```bash
    sudo apt-get update
    ```

    ```bash
    sudo apt-get install mssql-tools unixodbc-dev
    ```

4. Opcional: Adicione */opt/mssql-tools/bin/* para seu caminho variável de ambiente em um shell bash.

    - Para tornar sqlcmd/bcp acessível do shell bash para sessões de logon, modificar sua caminho no ~/.bash_profile arquivo com o seguinte comando:

        ```bash
        echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
        ```

    - Para tornar sqlcmd/bcp acessível a partir do shell bash para sessões interativas/não logon, modificar o caminho no ~/.bashrc arquivo com o seguinte comando:

        ```bash
        echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
        source ~/.bashrc
        ```

---

## Verificar a versão instalada do SQL Server

<p>Use sqlcmd para executar um comando Transact-SQL que exibe a versão do SQL Server e a edição.</p>

```bash
sqlcmd -S localhost -U SA -Q 'select @@VERSION'
```

---

## Desinstalar

<p>Para remover o pacote mssql-server do Linux, use o comando a seguir:</p>

```bash
sudo apt-get remove mssql-server
```

<p>A remoção do pacote não exclui os arquivos de banco de dados gerado. Se você deseja excluir os arquivos de banco de dados, use o seguinte comando:</p>

```bash
sudo rm -rf /var/opt/mssql/
```

---

### Fontes

- https://docs.microsoft.com/pt-br/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-2017
- https://docs.microsoft.com/pt-br/sql/linux/sql-server-linux-setup?view=sql-server-2017#uninstall
- https://docs.microsoft.com/pt-br/sql/linux/sql-server-linux-setup?view=sql-server-2017#system
