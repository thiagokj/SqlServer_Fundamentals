/*
    FUNCTION | Funções executam instruções e retornam valores.
*/
USE [CursoTeste]
GO

CREATE OR ALTER FUNCTION [fnRetornaOla](@Nome VARCHAR(100))
RETURNS VARCHAR(100)
BEGIN
   RETURN('Olá ' + (@Nome))
END;
GO

SELECT dbo.fnRetornaOla('Tom');