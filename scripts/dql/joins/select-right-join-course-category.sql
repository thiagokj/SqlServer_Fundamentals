/*
    RIGHT JOIN | Combina todos os itens da segunda tabela
    comparando com a primeira. Caso um item exista apenas na segunda tabela,
    preenche os registros com null onde não houver correspondência.
*/
USE[CursoTeste];

SELECT 
    [C].[Id],
    [C].[Nome],
    [C].[IdCategoria],
    [CA].[Nome]
FROM [Curso] AS [C] -- 1ª tabela
    RIGHT JOIN [Categoria] AS [CA] -- 2ª tabela
    ON [C].[IdCategoria] = [CA].[Id];