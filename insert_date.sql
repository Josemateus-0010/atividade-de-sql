-- Inserir categorias
INSERT INTO Categoria (nome) VALUES
('Masculino'), ('Feminino'), ('Infantil');

-- Inserir clientes
INSERT INTO Cliente (nome, cpf, email, telefone, endereco) VALUES
('João Silva', '123.456.789-00', 'joao@email.com', '1199999-0000', 'Rua A, 123'),
('Maria Souza', '987.654.321-00', 'maria@email.com', '1199000-1111', 'Rua B, 456');

-- Inserir produtos
INSERT INTO Produto (nome, preco, estoque, id_categoria) VALUES
('Camiseta Masculina', 59.90, 50, 1),
('Vestido Feminino', 120.00, 30, 2),
('Camiseta Infantil', 35.00, 40, 3);

-- Inserir fornecedores
INSERT INTO Fornecedor (nome, cnpj, telefone, endereco) VALUES
('Fornecedor Roupas A', '11.111.111/0001-11', '1198000-2222', 'Avenida Central, 1000'),
('Fornecedor Roupas B', '22.222.222/0001-22', '1197000-3333', 'Avenida Sul, 2000');

-- Associação produto–fornecedor
INSERT INTO ProdutoFornecedor (id_produto, id_fornecedor) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Inserir vendas
INSERT INTO Venda (id_cliente, data_venda, valor_total) VALUES
(1, '2025-01-10', 179.90),
(2, '2025-01-12', 155.00);

-- Itens da venda 1
INSERT INTO ItemVenda (id_venda, id_produto, quantidade, subtotal) VALUES
(1, 1, 2, 119.80),
(1, 3, 1, 35.00);

-- Itens da venda 2
INSERT INTO ItemVenda (id_venda, id_produto, quantidade, subtotal) VALUES
(2, 2, 1, 120.00),
(2, 3, 1, 35.00);

-- Pagamentos
INSERT INTO Pagamento (id_venda, tipo, valor) VALUES
(1, 'Cartão de Crédito', 179.90),
(2, 'Pix', 155.00);
