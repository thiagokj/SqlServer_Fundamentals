/* Script para criação de tabelas (esquemas).
*
*  COLCHETES | evita conflito com palavras reservadas
*  e espaços em branco. Ex: [Table of Team]
*
*  GO | Palavra reservada separar a execução de instruções
*  no banco de dados.
*  Deve-se levar em conta a declaração de variaveis e trechos
*  do código dependentes, evitando quebrar o script. 
*/
USE [Curso];

CREATE TABLE [Aluno](
    [Id] INT,
    [Nome] NVARCHAR(100),
    [Nascimento] DATETIME,
    [Ativo] BIT
);
GO