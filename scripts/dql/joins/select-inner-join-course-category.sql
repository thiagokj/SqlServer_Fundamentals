/*
    INNER JOIN | Combina tabelas somente onde existem
    os mesmos valores comparados.

    Normalmente os valores comparados são os IDs da chave primária
    e o ID da chave estrangeira.
*/
USE[CursoTeste];

SELECT 
    [Curso].[Id],
    [Curso].[Nome],
    [Curso].[IdCategoria],
    [Categoria].[Nome]
FROM
    [Curso] 
    INNER JOIN [Categoria]
    ON [Curso].[IdCategoria] = [Categoria].[Id];