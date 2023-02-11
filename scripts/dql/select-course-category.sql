/*
    SELECT Column1, Column2 FROM Table WHERE Column1 = 1
*/
USE[CursoTeste];

SELECT 
    C.Id,
    C.Nome,
    C.IdCategoria,
    CA.Nome
    FROM Curso C
    INNER JOIN Categoria CA
    ON C.IdCategoria = CA.Id;
    