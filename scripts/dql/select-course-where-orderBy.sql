/*
    WHERE | Filtro para especificar o retorno.
    ORDER BY | Ordenação ascendente (ASC) implitica e
    ordenação descendente (DESC)
    
    Ex: SELECT Column1, Column2 
        FROM Table 
        WHERE Column = Condition
        ORDER BY Column DESC
*/
USE[CursoTeste];

SELECT 
    [Id],
    [Nome],
    [IdCategoria]
    FROM [Curso] 
    WHERE [IdCategoria] = 1
    ORDER BY [Nome] DESC;
    