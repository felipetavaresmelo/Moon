---
layout: post
title:  "Framework"
date:   2019-03-18
excerpt: "Projeto de framework pessoal"
tag: 
- Projeto pessoal
- Framework
comments: true
project: true
sitemap: true
---

# Framework Pessoal [^bignote]

Esse framework foi criado com a finalidade de reunir módulos a serem utilizado em conjunto, em qualquer solução de negócio.

Github do projeto:
<iframe src="https://ghbtns.com/github-btn.html?user=felipetavaresmelo&repo=framework&type=star&count=true&size=large" frameborder="0" scrolling="0" width="160px" height="30px"></iframe>

---

## Modelagem

Para modelagem do diagrama de classes está sendo utililzado o software free: [DIA - Diagram Editor](http://dia-installer.de/).

Segue o modelo na situação atual:
[![Diagrama de classes do projeto.](/assets/img/framework/2019-06-18_uml-class-diagram.png "Diagrama de classes do projeto")](https://raw.githubusercontent.com/felipetavaresmelo/felipetavaresmelo.github.io/master/assets/img/framework/2019-06-18_uml-class-diagram.png)

---

## Tecnologias

Prioritariamente serão utilizadas as seguintes tecnologias:

### Banco de Dados

- [MariaDB](https://mariadb.org/) ou o [Postgress](https://www.postgresql.org/): Para o armazenamento de informações com dados estruturados.

- [MongoDB](https://www.mongodb.com/): Para a exploração de grandes volumes de dados não estruturados e também para dados que necessitarão de muitas requisições de leitura.

### Backend:

- [Node.js](https://nodejs.org): Os serviços do backend será predominantemente escrito em [JavaScript](https://pt.wikipedia.org/wiki/JavaScript).
- [Express.js](https://expressjs.com): O webservice de acesso aos serviços do backend será feito com o Express.js.
- [Python](https://www.python.org/) em algumas situações, por exemplo, para raspagem de dados, será utilizado [Python](https://pt.wikipedia.org/wiki/Python).
- [JSON](https://pt.wikipedia.org/wiki/JSON): Será utilizado o padrão de documentos .JSON para troca de informações com o frontend e integração com outras soluções.

### Frontend

#### Acesso Web:

- [Vue.js](https://vuejs.org/) ou [React](https://reactjs.org/): O frontend web será feito na arquitetura de uma [Single-page Application (SPA)](https://pt.wikipedia.org/wiki/Aplicativo_de_p%C3%A1gina_%C3%BAnica) onde toda a informação é processada dinamicamente no cliente web.

#### Acessso por dispositivos móveis
- [React Native](https://facebook.github.io/react-native/): Será utilizado para a criação de APPs para dispositivos móveis.

---

[^bignote]: Esse projeto é incremental. Foi feito com o interesse de registrar algumas idéias e divulgar o conteúdo técnico utilizado no projeto para que outras pessoas possam colaborar.
    Caso encontre alguma informação confusa, errada ou incompleta peço a gentileza de colocar nos comentários para que eu possa melhorar o post.
    Agradeço a compreesão.