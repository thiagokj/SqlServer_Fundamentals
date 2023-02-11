/*
    COMPOSITE KEY | Uma PRIMARY KEY composta por 2 ou mais colunas.
    Utilizada para relacionamentos N:N (muitos para muitos).
    Essa instrução costuma aparecer em uma tabela intermediária,
    relacionando as informações pertinentes entre 2 tabelas.
    As colunas que compõem a chave são automaticamente definidas
    como UNIQUE e NOT NULL.

    Curiosidade: "N" significa um número indeterminado. 

    FOREIGN KEY | Cria uma referência para associar os Id's 
    nos relacionamentos.
    Dessa forma, é feita uma validação dos Id's, que devem
    constar nas 2 tabelas.
*/

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

-- Relacionamento 1:N
-- Um Curso pode ter muitas Categorias, mas
-- uma Categoria pertence apenas a um Curso.
DROP TABLE [Curso];
CREATE TABLE [Curso](
    [Id] INT,
    [Nome] NVARCHAR(80) NOT NULL,
    [IdCategoria] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([IdCategoria])
        REFERENCES[Categoria]([Id])
);
GO

DROP TABLE [Categoria];
CREATE TABLE [Categoria](
    [Id] INT,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
);
GO

-- Tabela intermediária, associando Aluno e Curso (N:N).
-- Um Curso pode ser realizado por muitos Alunos e
-- um Aluno pode ter muitos Cursos.
DROP TABLE [CursoProgresso];
CREATE TABLE [CursoProgresso](
    [IdAluno] INT NOT NULL,
    [IdCurso] INT NOT NULL,
    [Progresso] INT NOT NULL,
    [UltimaAtualizacao] DATETIME DEFAULT (GETDATE()),

    CONSTRAINT [PK_CursoProgresso] PRIMARY KEY([IdAluno], [IdCurso])
);
GO

