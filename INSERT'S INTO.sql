INSERT INTO tbl_marcas (Marca_Nome, Marca_Nacionalidade) VALUES
    ('Nike', 'Estados Unidos'),
    ('Adidas', 'Alemanha'),
    ('Samsung', 'Coreia do Sul'),
    ('Toyota', 'Japão'),
    ('PepsiCo', 'Estados Unidos'),
    ('Nestlé', 'Suíça'),
    ('Sony', 'Japão'),
    ('Coca-Cola', 'Estados Unidos'),
    ('Microsoft', 'Estados Unidos'),
    ('BMW', 'Alemanha')
;

INSERT INTO tbl_fornecedores (Fornecedor_Nome, Fornecedor_Email) VALUES
    ('Tênis World', 'contact@tenisworld.com'),
    ('Tech Ponto', 'contact@techponto.com'),
    ('Casas Bahia', 'contact@casasbahia.com'),
    ('Center Peças Fabri', 'contact@centerfabri.com'),
    ('Coca-Cola Enterprises', 'contact@cocacola.com'),
    ('Nestlé S.A.', 'contact@nestle.com'),
    ('Looking Good Store', 'contact@lookinggood.com'),
    ('Microsoft Corporation', 'contact@microsoft.com'),
    ('PepsiCo Inc.', 'contact@pepsico.com'),
    ('Autorizada da BMW', 'contact@bwmautorizada.com')
;

INSERT INTO tbl_produtos (Produto_Nome, Produto_Qnt_Estoque, Produto_Estoque_Min, 
Produto_Data_Validade, Produto_Perecivel, Produto_Valor, Produto_Marca_Id) VALUES
    ('Tênis Esportivo', 80, 30, NULL, FALSE, 150, 1),
    ('Smartphone', 100, 20, NULL, FALSE, 800, 3),
    ('TV LED', 10, 20, NULL, FALSE, 1200, 7),
    ('Bateria Automotiva', 80, 15, NULL, FALSE, 100, 4),
    ('Refrigerante', 200, 50, '2024-10-31', TRUE, 3.50, 8),
    ('Café', 150, 30, '2023-12-31', TRUE, 5, 6),
    ('Tênis Social', 50, 80, NULL, FALSE, 80, 2),
    ('Software de Produtividade', 500, 100, NULL, FALSE, 200, 9),
    ('Refrigerante Diet', 300, 50, '2024-04-22', TRUE, 4, 5),
    ('Carro Esportivo', 5, 10, NULL, FALSE, 10000, 10)
; SELECT * FROM tbl_produtos;

INSERT INTO tbl_produto_fornecedor VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10); 