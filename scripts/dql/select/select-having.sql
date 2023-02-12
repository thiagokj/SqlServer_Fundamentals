/*
    GROUP BY | Agrupa as informações após uma sumarização.
    É necessario informar o nome do campo do SELECT no
    GROUP BY.
*/
USE[CursoTeste];

SELECT
    CA.Id,
    CA.Nome NomeCategoria,
    COUNT (C.IdCategoria) QtdCursosPorCategoria
FROM
    Categoria CA
    INNER JOIN Curso C
    ON C.IdCategoria = CA.Id
GROUP BY
    CA.Id,
    CA.Nome;       