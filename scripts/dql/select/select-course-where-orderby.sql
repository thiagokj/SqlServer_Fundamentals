/*
    WHERE | Condição para especificar o retorno.

    OR, AND, LIKE | Instruções de comparação normalmente usadas após o Where.

    ORDER BY | Ordenação ascendente (ASC) implitica e
    ordenação descendente (DESC)

    
    Ex: SELECT Column1, Column2 
        FROM Table 
        WHERE Column = Condition
        ORDER BY Column DESC
*/
USE [CursoTeste];

SELECT 
    [Id],
    [Nome],
    [IdCategoria]
FROM 
    [Curso] 
WHERE 
    [IdCategoria] = 3 OR
    [Id] = 3
ORDER BY
    [Nome] DESC;
    