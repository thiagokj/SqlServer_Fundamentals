/*
    CONSTRAINTS | São restrições colocadas nas colunas das tabelas.
    Em algumas situações, é necessário recriar a coluna para adicionar constraints.
    
    Tipos:

    UNIQUE | Campo só permite um valor uníco para coluna. 
    Ex: Posso ter apenas o valor 1 na coluna Id.
    Se for informado o valor 1 novamente, haverá erro.
    
    NOT NULL | Campo não aceita valores nulos.

    DEFAULT | Valor padrão informado ao inserir um novo registro.
*/

USE [Curso];

DROP TABLE [Aluno];
CREATE TABLE [Aluno](
    [Id] INT NOT NULL UNIQUE,
    [Nome] NVARCHAR(80) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Ativo] BIT DEFAULT(0)
);
GO

ALTER TABLE [Aluno] 
    ALTER COLUMN [Ativo] BIT NOT NULL;
GO