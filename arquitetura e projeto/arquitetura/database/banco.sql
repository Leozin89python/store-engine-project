-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE produtos (
prod_id VARCHAR(50) PRIMARY KEY AUTO_INCREMENT,
image_Url VARCHAR(10),
descricao VARCHAR(10)NOT NULL,
preco VARCHAR(10) NOT NULL
)

