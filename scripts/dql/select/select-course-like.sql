/*
    LIKE | Operador para pesquisa de termos que contenham a busca.
    % | O porcentagem em conjunto com o LIKE indica onde começa
    e onde termina o termo pesquisado.
*/
USE[CursoTeste];

SELECT *
FROM [Curso]
WHERE [Nome] LIKE '%Fundamentos%';

    