DROP DATABASE IF EXISTS db_sapataria;
CREATE DATABASE db_sapataria;
USE db_sapataria;

CREATE TABLE loja(
cnpj varchar(14) not null,
nome varchar(50) not null,
endereco varchar(200),
telefone varchar(20),
PRIMARY KEY(cnpj));

CREATE TABLE funcionarios(
cpf varchar(11) not null,
nome varchar(50) not null,
sexo varchar(1),
idade int,
salario float,
funcao varchar(50),
cnpj_loja varchar(14),
PRIMARY KEY(cpf),
FOREIGN KEY(cnpj_loja) REFERENCES loja(cnpj));

CREATE TABLE clientes(
cpf varchar(11) not null,
nome varchar(50) not null,
sexo varchar(1),
endereco varchar(200),
telefone varchar(20),
PRIMARY KEY(cpf));

CREATE TABLE produtos(
codigo_produto int not null,
modelo varchar(100),
cor varchar(50),
tamanho int,
quantidade_estoque int,
PRIMARY KEY(codigo_produto));

CREATE TABLE pedidos(
codigo_pedido int,
data_pedido date,
cpf_cliente varchar(11),
cpf_funcionario varchar(11),
PRIMARY KEY(codigo_pedido),
FOREIGN KEY(cpf_cliente) REFERENCES clientes(cpf),
FOREIGN KEY(cpf_funcionario) REFERENCES funcionarios(cpf));

CREATE TABLE item_pedido(
codigo_pedido int,
codigo_produto int,
quantidade int,
preco_unidade float,
PRIMARY KEY(codigo_pedido, codigo_produto),
FOREIGN KEY(codigo_pedido) REFERENCES pedidos(codigo_pedido),
FOREIGN KEY(codigo_produto) REFERENCES produtos(codigo_produto));

CREATE TABLE vendas(
codigo_venda int not null,
data_venda date,
cpf_cliente varchar(11),
cpf_funcionario varchar(11),
cnpj_loja varchar(14),
PRIMARY KEY(codigo_venda),
FOREIGN KEY(cpf_cliente) REFERENCES clientes(cpf),
FOREIGN KEY(cpf_funcionario) REFERENCES funcionarios(cpf),
FOREIGN KEY(cnpj_loja) REFERENCES loja(cnpj));

CREATE TABLE item_venda(
codigo_venda int,
codigo_produto int,
quantidade int,
preco_unidade float,
PRIMARY KEY(codigo_venda, codigo_produto),
FOREIGN KEY(codigo_venda) REFERENCES vendas(codigo_venda),
FOREIGN KEY(codigo_produto) REFERENCES produtos(codigo_produto));