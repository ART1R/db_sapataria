#Acessando o Banco de Dados
USE db_sapataria;

#Apagando o produto de código 4 do banco de dados
DELETE FROM produtos WHERE codigo_produto = 4;

#Apagando o funcionário de cpf 77788899900 do banco de dados
DELETE FROM funcionarios WHERE cpf = 77788899900