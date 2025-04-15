-- 1. Quantos pedidos foram feitos por cliente?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY total_pedidos DESC;

-- 2. Relação de produtos, fornecedores e estoques
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade AS em_estoque
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor
JOIN Estoque e ON p.id_produto = e.id_produto;

-- 3. Relação de nomes dos fornecedores e produtos
SELECT f.nome AS fornecedor, p.nome AS produto
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

-- 4. Clientes com mais de 1 pedido
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
HAVING COUNT(p.id_pedido) > 1;

-- 5. Total gasto por pedido (atributo derivado)
SELECT p.id_pedido,
       SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM Pedido p
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido;
