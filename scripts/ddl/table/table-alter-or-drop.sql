-- Script para alteração em tabelas.
USE [Curso];

-- Adiciona uma nova coluna
ALTER TABLE [Aluno]
    ADD [Documento] NVARCHAR(11);   
GO

-- Altera uma coluna
ALTER TABLE [Aluno]
    ALTER COLUMN [Documento] CHAR(5);   
GO

-- Remove uma coluna
ALTER TABLE [Aluno]
    DROP COLUMN [Documento];   
GO

