SHOW DATABASES;
USE db_empresa;

CREATE TABLE tbl_marcas (
    Marca_Id INT PRIMARY KEY AUTO_INCREMENT,
    Marca_Nome VARCHAR(50) NOT NULL,
    Marca_Nacionalidade VARCHAR(50)
);
DROP TABLE tbl_marcas;

CREATE TABLE tbl_fornecedores (
    Fornecedor_Id INT PRIMARY KEY AUTO_INCREMENT,
    Fornecedor_Nome VARCHAR(50) NOT NULL,
    Fornecedor_Email VARCHAR(50)
);
DROP TABLE tbl_fornecedores;

CREATE TABLE tbl_produtos (
	Produto_Id INT PRIMARY KEY AUTO_INCREMENT,
    Produto_Nome VARCHAR(50) NOT NULL,
    Produto_Qnt_Estoque INT NOT NULL DEFAULT 0,
    Produto_Estoque_Min INT NOT NULL DEFAULT 0,
    Produto_Data_Fabricacao DATETIME DEFAULT NOW(),
    Produto_Data_Validade DATETIME DEFAULT (NOW()+30),
    Produto_Perecivel BOOLEAN,
    Produto_Valor FLOAT,
    Produto_Marca_Id int,
    FOREIGN KEY fk_marca_id (Produto_Marca_Id) 
    REFERENCES tbl_marcas (Marca_Id)
);
DROP TABLE tbl_produtos;

CREATE TABLE tbl_produto_fornecedor (
    Produto_Id INT REFERENCES tbl_produtos (Produto_Id),
    Fornecedor_Id INT REFERENCES tbl_fornecedores (Fornecedor_Id)
);