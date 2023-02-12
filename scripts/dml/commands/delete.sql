/*
    DELETE | Instrução para apagar dados na tabela do banco de dados.

    Deve-se ter atenção redobrada antes de executar deletes, pois
    todos os registros são afetados por esse comando.
    O ideal é sempre usar o DELETE com o filtro WHERE.
    Ex: DELETE FROM Table WHERE Id = 1;

    Caso queira testar o resultado do DELETE, pode ser
    criado um bloco de execução TRANSACTION com a opção ROLLBACK.
    EX: BEGIN TRANSACTION
            DELETE 
            FROM Categoria
            WHERE Id = 4
        ROLLBACK

    Essa opção deve ser onde não há muitos dados.
    Se houverem milhões de registros, pode haver travamento.
*/

USE [CursoTeste];

DELETE 
FROM [Categoria]
WHERE Id = 4;














