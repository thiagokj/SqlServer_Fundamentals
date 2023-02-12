/*
    FUNCTION | Funções executam instruções e retornam valores.
*/

USE[CursoTeste];
GO

CREATE OR ALTER FUNCTION fnRetornaListaDeNumeros()
RETURNS TABLE 
AS
RETURN (
    SELECT 1 AS Numeros
    UNION  
    SELECT 2 AS Numeros
    UNION  
    SELECT 3 AS Numeros
);
GO

SELECT * FROM dbo.fnRetornaListaDeNumeros()