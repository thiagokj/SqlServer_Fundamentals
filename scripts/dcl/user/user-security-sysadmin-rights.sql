-- Script apenas para testes, pois libera permissão total a um usuário
USE [Curso];
GO

EXEC sp_addsrvrolemember 'NomeDoUsuario', 'sysadmin';
GO