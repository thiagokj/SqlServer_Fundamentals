-- INDEX | Adiciona índices aos campos da tabela, tornando a pesquisa mais performática.
-- Porém o processo de inserir dados na tabela fica mais lento.
-- Deve ser levado em conta se muitas pesquisas precisam ser feitas com esse campo.
USE [Curso];

DROP TABLE [Aluno];
CREATE TABLE [Aluno](
    [Id] INT,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(80),
    [Nascimento] DATETIME NULL,
    [Ativo] BIT DEFAULT(0),

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]),
    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email])
);
GO

CREATE INDEX [IX_Aluno_Email] ON [Aluno]([Email]);
--DROP INDEX [IX_Aluno_Email] ON [Aluno];
