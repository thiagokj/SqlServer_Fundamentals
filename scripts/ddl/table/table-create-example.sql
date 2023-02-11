USE [CursoTeste]

-- ALTER TABLE [Curso] DROP CONSTRAINT [PK_Curso];
-- ALTER TABLE [Curso] DROP CONSTRAINT [FK_Curso_Categoria];
-- ALTER TABLE [Categoria] DROP CONSTRAINT [PK_Categoria];

DROP TABLE[Categoria];
CREATE TABLE [Categoria](
    [Id] INT IDENTITY(1, 1) NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
);
GO

DROP TABLE[Curso];
CREATE TABLE [Curso](
    [Id] INT IDENTITY(1, 1) NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [IdCategoria] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([IdCategoria])
        REFERENCES[Categoria]([Id])
);
GO