/*
    Essa instrução faz o backup dos dados, criando 2 novas tabelas.
    Depois são apagados os registros em 2 tabelas.

    Como existem CONSTRAINTS que protegem a exclusão dos dados entre 
    as tabelas Categoria e Curso, é necessário apagar os registros
    que com esses vínculos.
*/
USE [CursoTeste];

BEGIN TRANSACTION
    DROP TABLE IF EXISTS CursoBackup;
    SELECT * 
    INTO [CursoBackup]
    FROM [Curso];

    DROP TABLE IF EXISTS CategoriaBackup;
    SELECT * 
    INTO [CategoriaBackup]
    FROM [Categoria];

    DELETE FROM [Curso]
    WHERE [IdCategoria] = 3;

    DELETE FROM [Categoria]
    WHERE [Id] = 3;
COMMIT;













