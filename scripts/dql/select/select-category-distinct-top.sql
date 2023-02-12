/*
    TOP | Limita a quantidade de linhas retornadas.
    Ajuda na performance do sistema e evita sobreecarregar
    o aplicativo em caso de milhões de dados.

    DISTINCT | Remove linhas duplicadas conforme filtro
    
    Ex: SELECT DISTINCT TOP 10 
            Column1, Column2 
        FROM Table 
*/
USE [CursoTeste];

SELECT DISTINCT TOP 10
    [Nome]
FROM [Categoria];


    