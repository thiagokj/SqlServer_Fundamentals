/*
    IN | Retorna os valores contidos em uma lista (array).
    BETWEEN | Retorna os valores comparando o intervalo inicial e o final.
    O BETWEEN é muito utilizado para intervalo de datas.
*/
USE[CursoTeste];

-- Retorna somente os Ids 1, 2 e 5.
SELECT *
FROM [Categoria]
WHERE [Id] IN (1, 2, 5);

-- Retorna todos os Ids entre 2 e 10.
SELECT *
FROM [Categoria]
WHERE [Id] BETWEEN 2 AND 10;

    