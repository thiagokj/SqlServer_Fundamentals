/*
    UPDATE | Instrução para atualizar dados na tabela do banco de dados.

    Deve-se ter atenção redobrada antes de executar Updates, pois
    todos os registros são afetados por esse comando.
    O ideal é sempre usar o UPDATE com o filtro WHERE.
    Ex: UPDATE Table SET Column1 = 'Valor' WHERE Id = 1;

    Caso queira testar o resultado do UPDATE, pode ser
    criada um bloco de execução TRANSACTION com a opção ROLLBACK.
    EX: BEGIN TRANSACTION
            UPDATE Categoria
            SET Nome = Fullstack
            WHERE Id = 1
        ROLLBACK

    Essa opção deve ser onde não há muitos dados.
    Se houverem milhões de registros, pode haver travamento.
*/

USE [CursoTeste];

UPDATE [Categoria]
SET [Nome] = 'Outro'
WHERE [Id] = 4;











