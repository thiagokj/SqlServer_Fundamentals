/*
    PROCEDURES | Também conhecidas como STORED PROCEDURES (S.P.), os
    procedimentos armazenados são pedaços de código organizados em
    instruções para execução.

    Com as PROCEDURES, podemos fazer diversas operações como consultas
    e edição nos dados, mantendo o código enxuto para execução.

    Há em muitos casos o ganho na performance, porque as procedures são
    compiladas e otimizadas no banco de dados. As informações são armazenadas
    em cache, tornando a execução mais rápida da próxima vez que for invocada.
*/

CREATE OR ALTER PROCEDURE spListaDeCursos AS
SELECT Curso.Id, Curso.Nome FROM Curso;

-- Exclui PROCEDURE
-- DROP PROCEDURE [spListaDeCursos];

-- Executa PROCEDURE
EXEC [spListaDeCursos];