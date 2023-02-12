/*
    VIEW | Cria uma tabela virtual baseada em uma consulta.
    A VIEW facilita a visualização das informações, reduzindo
    o tamanho de querys mais complexas e facilitando a consutrução
    de mais consultas.

    EX: CREATE OR ALTER VIEW vwMyView
        AS SELECT Id, Name FROM Course

    Após criar a VIEW, ela fica disponivel para consultas.
    EX: SELECT TOP 10 * FROM vwMyView    

    Nesse exemplo, é necessario informar a instrução GO após o USE,
    pois a criação da VIEW tem que ser em lote unico para execução.
*/
USE[CursoTeste]
GO

CREATE OR ALTER VIEW vwContagemDeCursosPorCategoria AS
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
