/*
    FUNCTION | Funções executam instruções e retornam valores.
*/
USE[CursoTeste];
GO

CREATE OR ALTER FUNCTION [dbo].[fnCriaListaDeNumeros] (@numero INT)
RETURNS TABLE
AS
RETURN (
    WITH Numeros (Numero) AS (
        SELECT 1
        UNION ALL
        SELECT Numero + 1
        FROM Numeros
        WHERE Numero + 1 <= @numero
    )
    SELECT Numero
    FROM Numeros
);
GO

SELECT * FROM dbo.fnCriaListaDeNumeros(10) AS ListaDeNumeros