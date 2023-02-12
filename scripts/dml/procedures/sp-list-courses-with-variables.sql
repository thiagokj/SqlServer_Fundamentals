/*
    DECLARE | Permite a criação de variáveis no script sempre com o prefixo @.
    Ex: DECLARE @var

    SET | Após declarar a variavel, o SET permite a atribuição dos valores.
    Ex: SET @var = 1

    Também é possivel passar o valor logo após a declaração, sem usar o SET.
    Ex: DECLARE @var INT = 1
*/

CREATE OR ALTER PROCEDURE spListaDeCursosPorNomeDaCategoria 
    -- Aqui podem ser declarados parâmetros de entrada
    @NomeDaCategoria NVARCHAR(100)
AS
    DECLARE @IdCategoria INT
    SET @IdCategoria = (SELECT TOP 1 [Id]
                        FROM [Categoria]
                        WHERE [Nome]
                        LIKE '%' + @NomeDaCategoria + '%')    

    SELECT 
        [C].[Nome] NomeDoCurso,
        [CA].[Nome] NomeDaCategoria
    FROM [Curso] [C]
    INNER JOIN [Categoria] [CA]
    ON [CA].[Id] = [C].[IdCategoria]
    WHERE [C].[IdCategoria] = @IdCategoria;
GO

-- Executa PROCEDURE com parametros.
-- Ex: EXEC nomeDaProcedure 'parametro1', 'parametro2', ...
EXEC [spListaDeCursosPorNomeDaCategoria] 'front';