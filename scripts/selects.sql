#Acessando o Banco de Dados
USE db_sapataria;

#Consulta o nome, endereço, telefone e data do pedido dos clientes que realizaram compras em agosto
SELECT c.nome, c.endereco, c.telefone, p.data_pedido 
FROM clientes as c 
JOIN pedidos as p ON c.cpf = p.cpf_cliente 
WHERE MONTH(p.data_pedido) = 8
ORDER BY p.data_pedido DESC;

#Consulta o nome e o salário dos funcionários que são vendedores
SELECT f.nome, f.salario FROM funcionarios as f WHERE f.funcao LIKE '%Vendedor%'; 

#Consulta os sapatos que tem tamanho entre 38 e 42
SELECT * from produtos WHERE tamanho BETWEEN 38 AND 42;

#Consulta os tamanhos de sapatos cadastrados e os ordena em ordem crescente
SELECT DISTINCT tamanho FROM produtos ORDER BY tamanho ASC;