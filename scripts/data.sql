#Acessando o Banco de Dados
USE db_sapataria;

#Inserir dados na tabela loja
INSERT INTO loja (cnpj, nome, endereco, telefone) VALUES ('12345678910123', 'Sapataria', 'Rua dos pés, 456 - Botafogo, Rio de Janeiro - RJ', '(21) 2004-6008');

#Inserir dados na tabela funcionarios
INSERT INTO funcionarios (cpf, nome, sexo, data_nascimento, salario, funcao, cnpj_loja) VALUES
('11122233344', 'Carlos Oliveira', 'M', '1992-08-15', 2500.00, 'Vendedor', '12345678910123'),
('55566677788', 'Ana Santos', 'F', '1996-03-22', 2200.00, 'Vendedora', '12345678910123'),
('99988877766', 'Mariana Costa', 'F', '1989-11-08', 2800.00, 'Gerente', '12345678910123'),
('44433322211', 'Pedro Almeida', 'M', '1995-05-30', 2300.00, 'Vendedor', '12345678910123'),
('77788899900', 'Juliana Pereira', 'F', '1998-12-14', 2100.00, 'Estoquista', '12345678910123');

#Inserir dados na tabela clientes
INSERT INTO clientes (cpf, nome, sexo, endereco, telefone) VALUES
('12345678900', 'Cláudio Rodrigues', 'M', 'Rua A, 100 - Ipanema, Rio de Janeiro - RJ', '(21) 9999-8888'),
('23456789011', 'Maria Oliveira', 'F', 'Alameda B, 200 - Moema, São Paulo - SP', '(11) 8888-7777'),
('34567890122', 'Paula Costa', 'F', 'Avenida C, 300 - Laranjeiras, Rio de Janeiro - RJ', '(21) 7777-6666'),
('45678901233', 'Ricardo Santos', 'M', 'Travessa D, 400 - Icaraí, Niterói - RJ', '(21) 6666-5555'),
('56789012344', 'Fernanda Lima', 'F', 'Rua E, 500 - Pelinca, Campos dos Goytacazes - RJ', '(22) 5555-4444');

#Inserir dados na tabela produtos
INSERT INTO produtos (codigo_produto, modelo, cor, tamanho, valor, quantidade_estoque) VALUES 
(1, 'Adidas Campus 00s', 'preto', 44, 299.90,10), 
(2, 'Adidas Campus 00s', 'preto', 42, 299.90,16),
(3, 'Nike Air Force', 'branco', 40, 349.90,30), 
(4, 'All Star', 'preto', 36, 199.90,25), 
(5, 'All Star', 'azul', 36, 199.90,10), 
(6, 'All Star', 'preto', 38, 199.90,15), 
(7, 'Nike Dunk Low', 'branco', 42, 449.90,10);

#Inserir dados na tabela pedidos
INSERT INTO pedidos (codigo_pedido, data_pedido, cpf_cliente, cpf_funcionario) VALUES
(101, '2025-08-25', '12345678900', '11122233344'),
(102, '2025-08-31', '23456789011', '55566677788'),
(103, '2025-09-04', '34567890122', '99988877766'),
(104, '2025-09-07', '45678901233', '44433322211'),
(105, '2025-09-08', '56789012344', '11122233344');


#Inserir dados na tabela item_pedido
INSERT INTO item_pedido (codigo_pedido, codigo_produto, quantidade) VALUES
(101, 1, 2),
(101, 5, 1),
(102, 3, 1),
(103, 7, 1),
(103, 2, 2),
(104, 3, 1),
(105, 2, 1),
(105, 6, 1),
(105, 5, 1);

#Inserir dados na tabela vendas
INSERT INTO vendas (codigo_venda, data_venda, cpf_cliente, cpf_funcionario, cnpj_loja) VALUES
(201, '2025-08-24', '12345678900', '11122233344', '12345678910123'),
(202, '2025-08-24', '23456789011', '55566677788', '12345678910123'),
(203, '2025-08-31', '34567890122', '99988877766', '12345678910123'),
(204, '2025-09-05', '45678901233', '44433322211', '12345678910123'),
(205, '2025-09-07', '56789012344', '11122233344', '12345678910123');

#Inserir dados na tabela item_venda
INSERT INTO item_venda (codigo_venda, codigo_produto, quantidade) VALUES
(201, 1, 2),
(201, 5, 1),
(202, 3, 1),
(203, 7, 1),
(203, 2, 2),
(204, 3, 1),
(205, 2, 1),
(205, 6, 1),
(205, 5, 1);

