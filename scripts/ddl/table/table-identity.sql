/* 
    IDENTITY | Cria um identificador, gerando automaticamente
    um valor sequencial. Temos 2 tipos mais comuns para uso:

    INT IDENTITY(1, 1) | Começa o contador com 1 e incrementa
    1 a cada novo registro.
    Ao fazer insert, a instrução ignora qualquer valor informado.

    UNIQUEIDENTIFIER | Gera um Id universal não sequencial.
    Ao fazer insert, a instrução ignora qualquer valor informado.
    Ex: execute SELECT NEWID() para retornar um GUID.
    
*/

USE [Curso];
-- Usando IDENTITY
DROP TABLE [Curso];
CREATE TABLE [Curso](
    [Id] INT IDENTITY (1, 1) NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [IdCategoria] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([IdCategoria])
        REFERENCES[Categoria]([Id])
);
GO

-- Usando GUID | Globally Unique IDentifier
DROP TABLE [Curso];
CREATE TABLE [Curso](
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [IdCategoria] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([IdCategoria])
        REFERENCES[Categoria]([Id])
);
GO