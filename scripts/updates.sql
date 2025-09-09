#Acessando o Banco de Dados
USE db_sapataria;

#Realizando aumento de 10% nos sapatos da Nike
UPDATE produtos SET valor = valor * 1.10 WHERE modelo LIKE '%Nike%';

#Alterando o Telefone da loja
UPDATE loja SET telefone = '(21) 99982-7256' WHERE cnpj = 12345678910123;