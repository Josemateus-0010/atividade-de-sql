-- SELECTs SIMPLES

SELECT * FROM Cliente;
SELECT nome, preco FROM Produto;
SELECT nome FROM Categoria;

-- SELECT com WHERE
SELECT * FROM Produto WHERE preco > 50;
SELECT * FROM Cliente WHERE nome LIKE '%a%';

-- ORDER BY
SELECT * FROM Produto ORDER BY preco DESC;
SELECT * FROM Cliente ORDER BY nome ASC;

-- LIMIT
SELECT * FROM Produto LIMIT 2;

-- SELECT com JOIN

-- Produtos com suas categorias
SELECT p.nome, p.preco, c.nome AS categoria
FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria;

-- Itens de uma venda com descrição do produto
SELECT v.id_venda, p.nome, iv.quantidade, iv.subtotal
FROM ItemVenda iv
JOIN Produto p ON iv.id_produto = p.id_produto
JOIN Venda v ON iv.id_venda = v.id_venda;

-- Venda + Cliente
SELECT v.id_venda, c.nome, v.data_venda, v.valor_total
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente;


-- UPDATES

-- Atualizar preço de um produto
UPDATE Produto SET preco = 65.00 WHERE id_produto = 1;

-- Atualizar estoque
UPDATE Produto SET estoque = estoque - 5 WHERE id_produto = 2;

-- Atualizar email de um cliente
UPDATE Cliente SET email = 'novoemail@dominio.com' WHERE id_cliente = 1;


-- DELETES

-- Excluir item de venda
DELETE FROM ItemVenda WHERE id_item = 1;

-- Excluir fornecedor
DELETE FROM Fornecedor WHERE id_fornecedor = 2;

-- Excluir cliente sem vendas associadas
DELETE FROM Cliente WHERE id_cliente = 2;
