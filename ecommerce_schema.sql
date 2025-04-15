-- Criação das tabelas

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    tipo_cliente ENUM('PF', 'PJ') NOT NULL
);

CREATE TABLE PessoaFisica (
    id_cliente INT PRIMARY KEY,
    cpf CHAR(11) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE PessoaJuridica (
    id_cliente INT PRIMARY KEY,
    cnpj CHAR(14) UNIQUE NOT NULL,
    razao_social VARCHAR(150),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY,
    nome VARCHAR(100),
    cnpj CHAR(14) UNIQUE
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Estoque (
    id_estoque INT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    status VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY,
    id_pedido INT,
    codigo_rastreio VARCHAR(50),
    status_entrega VARCHAR(50),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE FormaPagamento (
    id_pagamento INT PRIMARY KEY,
    id_cliente INT,
    tipo_pagamento VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE ItemPedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
