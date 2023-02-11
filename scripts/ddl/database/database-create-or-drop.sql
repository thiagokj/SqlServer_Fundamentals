-- USE | Informa qual é a base de dados em uso.
-- CREATE DATABASE | Cria o banco de dados, caso não exista.
-- COLLATE | define o tipo de alfabeto, verificação de acentos
-- e diferenças entre maiúsculas e minúsculas (charset).
USE [master];

CREATE DATABASE [Curso]
COLLATE Latin1_General_CI_AI;

-- Exclui o banco de dados, caso não esteja sendo executado.
-- DROP DATABASE [Curso]