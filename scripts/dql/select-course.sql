/*
    Para realizar as consultas (querys), utilizamos a instrução SELECT.
    SELECT | Selecione os campos.
    * | O asterísco é utilizado como coringa, retornando todos os campos.
    FROM | Tabelas ou esquemas com os dados a serem selecionados.

    Ex1: SELECT Column1, Column2 FROM Table 
    Ex2: SELECT * FROM Table 
*/
USE[CursoTeste];

SELECT 
    [Id],
    [Nome],
    [IdCategoria]
    FROM Curso;

    