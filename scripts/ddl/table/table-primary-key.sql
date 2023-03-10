/*
    PRIMARY KEY | Chave de identificação única na tabela.
    Utilizando essa instrução na coluna, são atribuídas implicitamente
    as CONSTRAINTS UNIQUE e NOT NULL.

    Por boas práticas e automatização de alguns frameworks,
    é interessante declarar a CONSTRAINT NOT NULL.
*/

USE [Curso];

DROP TABLE [Aluno];
CREATE TABLE [Aluno](
    [Id] INT CONSTRAINT [PK_Aluno] PRIMARY KEY NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(80),
    [Nascimento] DATETIME NULL,
    [Ativo] BIT DEFAULT(0),

    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email])
);
GO

ALTER TABLE [Aluno] 
    DROP CONSTRAINT [PK_Aluno];
GO