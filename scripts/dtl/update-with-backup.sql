/*
    Essa instrução faz o backup dos dados, criando uma nova tabela.
    Posteriormente é realizado o Update.
*/
USE [CursoTeste];

BEGIN TRANSACTION
    SELECT * 
    INTO [CategoriaBackup]
    FROM [Categoria];

    UPDATE [Categoria]
    SET [Nome] = 'Outro'
    WHERE [Id] = 3;
COMMIT;














