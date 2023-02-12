/*
    INSERT | Instrução para inserir dados na tabela do banco de dados.
    Ex: INSERT INTO Table(Column1, Column2) VALUES(1, 'John Doe');

    Referência: table-create-example.sql
*/

INSERT INTO [Categoria]([Nome]) VALUES('Backend');
INSERT INTO [Categoria]([Nome]) VALUES('Frontend');
INSERT INTO [Categoria]([Nome]) VALUES('Mobile');

INSERT INTO [Curso]([Nome], [IdCategoria]) VALUES('Fundamentos de C#', 1);
INSERT INTO [Curso]([Nome], [IdCategoria]) VALUES('Fundamentos de POO', 1);

INSERT INTO [Curso] VALUES('Angular', 2);
INSERT INTO [Curso] VALUES('Flutter', 3);
INSERT INTO [Curso] VALUES('React', 3);