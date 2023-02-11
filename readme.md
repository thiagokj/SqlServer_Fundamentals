# Docker - SQL SERVER Local

Projeto para estudo e revisão de conceitos com SQL SERVER.

Siglas da Linguagem:

DDL (Data Definition Language) - Linguagem de Definição de Dados.
São os comandos responsáveis por criar, modificar e excluir estruturas de objetos no banco de dados, como tabelas, índices, views, etc.
Exemplos de comandos DDL: CREATE, ALTER e DROP

DML (Data Manipulation Language) - Linguagem de Manipulação de Dados.
São os comandos responsáveis por manipular os dados armazenados dentro das tabelas. Insere, modifica e exclui informações.
Exemplos de comandos DML: INSERT, UPDATE, DELETE

DQL (Data Query Language) - Linguagem de Consulta de Dados.
São os comandos responsáveis por realizar consultas aos dados armazenados no banco de dados.
Exemplo de comando DQL: SELECT

DTL (Data Transaction Language) - Linguagem de Transação de Dados.
São os comandos responsáveis por gerenciar transações no banco de dados, permitindo garantir a integridade dos dados e a consistência dos resultados.
Exemplos de comandos DTL: BEGIN TRANSACTION, COMMIT, ROLLBACK

DCL (Data Control Language) - Linguagem de Controle de Dados.
São os comandos responsáveis por controlar a segurança no banco de dados, concedendo ou revogando permissões para usuários.
Exemplos de comandos DCL: GRANT, REVOKE, DENY.

Fonte: [O que são as siglas DDL, DML, DQL, DTL e DCL?](https://pt.stackoverflow.com/questions/262867/o-que-s%C3%A3o-as-siglas-ddl-dml-dql-dtl-e-dcl) 

Boas práticas:

1. Sempre verifique em qual base de dados serão executadas as instruções.
2. Verifique as permissões de segurança para cada usuario do banco de dados.
3. Adicione ponto e vírgula ";" ao final das instruções, para melhor legibilidade.