-- Inserindo clientes
INSERT INTO Cliente VALUES (1, 'João Silva', 'joao@email.com', '11999999999', 'PF');
INSERT INTO Cliente VALUES (2, 'Loja XYZ', 'contato@xyz.com.br', '1133334444', 'PJ');

-- Pessoa física e jurídica
INSERT INTO PessoaFisica VALUES (1, '12345678900');
INSERT INTO PessoaJuridica VALUES (2, '11222333444455', 'XYZ Comércio Ltda');

-- Fornecedores
INSERT INTO Fornecedor VALUES (1, 'Fornecedor A', '11111111000191');
INSERT INTO Fornecedor VALUES (2, 'Fornecedor B', '22222222000191');

-- Produtos
INSERT INTO Produto VALUES (1, 'Notebook', 'Notebook 15.6" com 16GB RAM', 3500.00, 1);
INSERT INTO Produto VALUES (2, 'Mouse Gamer', 'Mouse com RGB e 7 botões', 120.00, 2);

-- Estoque
INSERT INTO Estoque VALUES (1, 1, 10);
INSERT INTO Estoque VALUES (2, 2, 50);

-- Pedidos
INSERT INTO Pedido VALUES (1, 1, '2024-04-01', 'Processando');
INSERT INTO Pedido VALUES (2, 1, '2024-04-05', 'Enviado');

-- Entrega
INSERT INTO Entrega VALUES (1, 2, 'BR123456789BR', 'Em trânsito');

-- Forma de pagamento
INSERT INTO FormaPagamento VALUES (1, 1, 'Cartão de Crédito');
INSERT INTO FormaPagamento VALUES (2, 1, 'PIX');
INSERT INTO FormaPagamento VALUES (3, 2, 'Boleto');

-- Itens dos pedidos
INSERT INTO ItemPedido VALUES (1, 1, 1, 1, 3500.00);
INSERT INTO ItemPedido VALUES (2, 2, 2, 2, 120.00);
