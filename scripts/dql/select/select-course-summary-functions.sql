/*
    MIN | Retorna o menor valor encontrado na coluna.
    MAX | Retorna o maior valor encontrado na coluna.
    AVG | Retorna a média de valores encontrados na coluna.
    SUM | Retorna a soma dos valores encontrados na coluna.
    COUNT | Faz a contagem de registros na tabela.

    Uma boa prática é evitar utilizar o asterísco(*) para totalizar valores.
    Isso impacta em performance, pois são selecionadas todas as colunas
    da tabela.

    DICA: Utilize a palavra reservada AS para criar um apelido (Alias) para 
    colunas e tabelas.
*/
USE[CursoTeste];

SELECT 
    MIN([Id]) AS [Menor Valor],
    MAX([Id]) AS [Maior Valor],
    AVG([Id]) AS [Valor Medio],
    SUM([Id]) AS [Soma Dos IDs],
    COUNT([Id]) AS [Total De Registros]
FROM [Curso];

    