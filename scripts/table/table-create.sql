/* Script para criar tabelas (esquemas).
*
*  COLCHETES | evita conflito com palavras reservadas
*  e espaços em branco. Ex: [Table of Team]
*
*  GO | Palavra reservada para ir executando
*  cada instrução no banco de dados.
*  Dessa forma não é executado um lote de
*  informação todo de uma vez.
*/
USE [Curso];

CREATE TABLE [Aluno](
    [Id] INT,
    [Nome] NVARCHAR(100),
    [Nascimento] DATETIME,
    [Ativo] BIT
);
GO