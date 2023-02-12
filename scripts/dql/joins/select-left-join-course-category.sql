/*
    LEFT JOIN | Combina todos os itens da primeira tabela
    comparando com a segunda. Caso um item exista apenas na primeira tabela,
    preenche os registros com null onde não houver correspondência.

    AS | Cria apelido para tabelas e colunas, deixando os nomes para
    exibição e manipulação mais simples.
*/
USE[CursoTeste];

SELECT 
    [C].[Id],
    [C].[Nome],
    [C].[IdCategoria],
    [CA].[Nome]
FROM
    [Curso] AS [C] -- 1ª tabela
    LEFT JOIN [Categoria] AS [CA] -- 2ª tabela
    ON [C].[IdCategoria] = [CA].[Id];