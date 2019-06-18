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

Github do projeto: <iframe src="https://ghbtns.com/github-btn.html?user=felipetavaresmelo&repo=framework&type=star&count=true&size=large" frameborder="0" scrolling="0" width="160px" height="30px"></iframe>

---

## Modelagem

Para modelagem do diagrama de classes está sendo utililzado o software free: [DIA - Diagram Editor](http://dia-installer.de/).

Segue abaixo o modelo atual:
![Diagrama de classes do projeto.](/assets/img/framework/2019-06-18_uml-class-diagram.png "Framework")
[![Diagrama de classes do projeto.](/assets/img/framework/2019-06-18_uml-class-diagram.png "Framework")](https://github.com/felipetavaresmelo/framework/blob/master/modeling/diagrams/2019-06-18_uml-class-diagram.png)


---

## Tecnologias

Prioritariamente utilizarei as seguintes tecnologias:

### Banco de Dados

- Para o tratamento de informações com dados estruturados em banco de dados relacionais utilizarei o [MariaDB](https://mariadb.org/) ou o[Postgress](https://www.postgresql.org/). Ainda a ser definido.

- Para a exploração de dados não estruturados com grandes volumes de dados orientados a documentos e também para dados que tenham grande quantidade de requisições utilizarei o [MongoDB](https://www.mongodb.com/).

### Backend:

- O servidor será predominantemente escrito em [Node.js](https://nodejs.org) e em algumas situações em [python](https://www.python.org/) para raspagem de dados online, por exemplo.
- O webservice de acesso aos nossos serviços será feitos com o [Express.js](https://expressjs.com).
- Utilizaremos o padrão de documentos `.JSON` para troca de informações com o frontend.

### Frontend

#### Acesso Web:
- O frontend web será feito na arquitetura de uma SPA utilizando o framework [Vue.js](https://vuejs.org/) ou [React](https://reactjs.org/).

#### Acessso por dispositivos móveis
- Para acessos através de dispositivos móveis a serviços que possam ser pré-processados localmente nos dispositivos móveis criarei as APPs para Android e iOS com o framework [React Native](https://facebook.github.io/react-native/).

---

[^bignote]: Esse projeto é incremental. Foi feito com o interesse de registrar algumas idéias e divulgar o conteúdo técnico utilizado no projeto para que outras pessoas possam colaborar.
    Caso encontre alguma informação confusa, errada ou incompleta peço a gentileza de colocar nos comentários para que eu possa melhorar o post.
    Agradeço a compreesão.