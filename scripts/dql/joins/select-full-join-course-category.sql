/*
    FULL JOIN | Combinação completa de tabelas, listando todos
    os valores relacionados e preenchendo com null onde não
    houver correspondência.

    FULL OUTER JOIN | Sinônimo para FULL JOIN
*/
USE[CursoTeste];

SELECT 
    [Curso].[Id],
    [Curso].[Nome],
    [Curso].[IdCategoria],
    [Categoria].[Nome]
FROM
    [Curso] 
    FULL JOIN [Categoria]
    ON [Curso].[IdCategoria] = [Categoria].[Id];