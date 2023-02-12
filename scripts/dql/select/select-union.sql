/*
    UNION | Combina o resultado de duas ou mais consultas em
    uma unica tabela, removendo valores duplicados.

    UNION ALL | Combina o resultado de duas ou mais consultas em
    uma unica tabela, incluindo os valores duplicados.
*/
USE[CursoTeste];

    SELECT TOP 100
        [Nome] AS [Nome e Categoria]
    FROM
        [Curso]        
UNION
    SELECT TOP 100
        [Nome] AS [Nome e Categoria]
    FROM
        [Categoria];   