#Inserir dados na tabela loja
INSERT INTO loja (cnpj, nome, endereco, telefone) VALUES ('12345678910123', 'Sapataria', 'Rua dos pés, 456 - Botafogo, Rio de Janeiro - RJ', '(21) 2004-6008');

#Inserir dados na tabela funcionarios
INSERT INTO funcionarios (cpf, nome, sexo, idade, salario, funcao, cnpj_loja) VALUES
('11122233344', 'Carlos Oliveira', 'M', 32, 2500.00, 'Vendedor', '12345678910123'),
('55566677788', 'Ana Santos', 'F', 28, 2200.00, 'Vendedora', '12345678910123'),
('99988877766', 'Mariana Costa', 'F', 35, 2800.00, 'Gerente', '12345678910123'),
('44433322211', 'Pedro Almeida', 'M', 29, 2300.00, 'Vendedor', '12345678910123'),
('77788899900', 'Juliana Pereira', 'F', 26, 2100.00, 'Estoquista', '12345678910123');

#Inserir dados na tabela clientes
INSERT INTO clientes (cpf, nome, sexo, endereco, telefone) VALUES
('12345678900', 'Cláudio Rodrigues', 'M', 'Rua A, 100 - Ipanema, Rio de Janeiro - RJ', '(21) 9999-8888'),
('23456789011', 'Maria Oliveira', 'F', 'Alameda B, 200 - Moema, São Paulo - SP', '(11) 8888-7777'),
('34567890122', 'Paula Costa', 'F', 'Avenida C, 300 - Laranjeiras, Rio de Janeiro - RJ', '(21) 7777-6666'),
('45678901233', 'Ricardo Santos', 'M', 'Travessa D, 400 - Icaraí, Niterói - RJ', '(21) 6666-5555'),
('56789012344', 'Fernanda Lima', 'F', 'Rua E, 500 - Pelinca, Campos dos Goytacazes - RJ', '(22) 5555-4444');

#Inserir dados na tabela produtos
INSERT INTO produtos (codigo_produto, modelo, cor, tamanho, quantidade_estoque) VALUES 
(1, 'Adidas Campus 00s', 'preto', 44, 10), 
(2, 'Adidas Campus 00s', 'preto', 42, 16),
(3, 'Nike Air Force', 'branco', 40, 30), 
(4, 'All Star', 'preto', 36, 25), 
(5, 'All Star', 'azul', 36, 10), 
(6, 'All Star', 'preto', 38, 15), 
(7, 'Nike Dunk Low', 'branco', 42, 10);

#Inserir dados na tabela pedidos
INSERT INTO pedidos (codigo_pedido, data_pedido, cpf_cliente, cpf_funcionario) VALUES
(101, '2025-08-25', '12345678900', '11122233344'),
(102, '2025-08-31', '23456789011', '55566677788'),
(103, '2025-09-04', '34567890122', '99988877766'),
(104, '2025-09-07', '45678901233', '44433322211'),
(105, '2025-09-08', '56789012344', '11122233344');

USE db_sapataria;

#Inserir dados na tabela item_pedido
INSERT INTO item_pedido (codigo_pedido, codigo_produto, quantidade, preco_unidade) VALUES
(101, 1, 2, 199.90),
(101, 5, 1, 129.90),
(102, 3, 1, 299.90),
(103, 7, 1, 349.90),
(103, 2, 2, 199.90),
(104, 3, 1, 299.90),
(105, 2, 1, 199.90),
(105, 6, 1, 129.90),
(105, 5, 1, 129.90);

#Inserir dados na tabela vendas
INSERT INTO vendas (codigo_venda, data_venda, cpf_cliente, cpf_funcionario, cnpj_loja) VALUES
(201, '2024-01-15', '12345678900', '11122233344', '12345678910123'),
(202, '2024-01-16', '23456789011', '55566677788', '12345678910123'),
(203, '2024-01-17', '34567890122', '99988877766', '12345678910123'),
(204, '2024-01-18', '45678901233', '44433322211', '12345678910123'),
(205, '2024-01-19', '56789012344', '11122233344', '12345678910123');

#Inserir dados na tabela item_venda
INSERT INTO item_venda (codigo_venda, codigo_produto, quantidade, preco_unidade) VALUES
(201, 1, 2, 199.90),
(201, 5, 1, 129.90),
(202, 3, 1, 299.90),
(203, 7, 1, 349.90),
(203, 2, 2, 199.90),
(204, 3, 1, 299.90),
(205, 2, 1, 199.90),
(205, 6, 1, 129.90),
(205, 5, 1, 129.90);
