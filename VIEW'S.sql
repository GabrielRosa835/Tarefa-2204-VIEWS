-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS E SUAS RESPECTIVAS MARCAS --
CREATE OR REPLACE VIEW vw_produto_marca AS
    SELECT 
        Produto_Nome AS Produto, tbl_marcas.Marca_Nome AS Marca
    FROM
        tbl_produtos
            LEFT JOIN
        tbl_marcas ON tbl_produtos.Produto_Marca_Id = tbl_marcas.Marca_Id;
;SELECT * FROM vw_produto_marca;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS E SEUS RESPECTIVOS FORNECEDORES --
CREATE OR REPLACE VIEW vw_produto_fornecedor AS
    SELECT DISTINCT
        Produto_Nome AS Produto,
        tbl_fornecedores.Fornecedor_Nome AS Fornecedor
    FROM
        tbl_produtos
            LEFT JOIN
        tbl_produto_fornecedor ON tbl_produtos.Produto_Id = tbl_produto_fornecedor.Produto_Id
            LEFT JOIN
        tbl_fornecedores ON tbl_produto_fornecedor.Fornecedor_Id = tbl_fornecedores.Fornecedor_Id;
; SELECT * FROM vw_produto_fornecedor;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS E SEUS RESPECTIVOS FORNECEDORES E MARCAS --
CREATE OR REPLACE VIEW vw_produto_fornecedor_marca AS
    SELECT DISTINCT
        Produto_Nome AS Produto,
        tbl_marcas.Marca_Nome AS Marca,
        tbl_fornecedores.Fornecedor_Nome AS Fornecedor
    FROM
        tbl_produtos
            LEFT JOIN
        tbl_marcas ON tbl_produtos.Produto_Marca_Id = tbl_marcas.Marca_Id
            LEFT JOIN
        tbl_produto_fornecedor ON tbl_produtos.Produto_Id = tbl_produto_fornecedor.Produto_Id
            LEFT JOIN
        tbl_fornecedores ON tbl_produto_fornecedor.Fornecedor_Id = tbl_fornecedores.Fornecedor_Id
;SELECT * FROM vw_produto_fornecedor_marca;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS COM ESTOQUE ABAIXO DO MÍNIMO --
CREATE OR REPLACE VIEW vw_produtoAbaixoDoMinimo AS
    SELECT 
        Produto_Nome AS Produto,
        Produto_Qnt_Estoque AS Estoque_Atual,
        Produto_Estoque_Min AS Estoque_Mínimo
    FROM
        tbl_produtos
    WHERE
        Produto_Qnt_Estoque < Produto_Estoque_Min
; SELECT * FROM vw_produtoAbaixoDoMinimo;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS E SUAS RESPECTIVAS MARCAS COM VALIDADE VENCIDA --
CREATE OR REPLACE VIEW vw_produtoVencido_marca AS
    SELECT 
        Produto_Nome AS Produto,
        tbl_marcas.Marca_Nome AS Marca,
        Produto_Data_Validade AS Data_de_Validade,
        NOW() AS Hoje
    FROM
        tbl_produtos
            INNER JOIN
        tbl_marcas ON tbl_produtos.Produto_Marca_Id = tbl_marcas.Marca_Id
    WHERE
        Produto_Data_Validade < NOW()
; SELECT * FROM vw_produtoVencido_marca;

-- SELECIONAR OS PRODUTOS COM PREÇO ACIMA DA MÉDIA
CREATE OR REPLACE VIEW vw_ProdutoPrecoAcimaMedia AS
    SELECT 
        Produto_Nome AS Produto,
        Produto_Valor AS Preço,
        (SELECT AVG(Produto_Valor) FROM tbl_produtos) AS Média
    FROM
        tbl_produtos
    WHERE
        Produto_Valor > (SELECT AVG(Produto_Valor) FROM tbl_produtos)
; SELECT * FROM vw_ProdutoPrecoAcimaMedia;