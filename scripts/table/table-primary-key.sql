/*
    PRIMARY KEY | Chave de identificação única na tabela.
    Utilizando essa instrução na coluna, são atribuídas
    as CONSTRAINTS UNIQUE e NOT NULL.
*/

USE [Curso];

DROP TABLE [Aluno];
CREATE TABLE [Aluno](
    [Id] INT CONSTRAINT [PK_Aluno] PRIMARY KEY,
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