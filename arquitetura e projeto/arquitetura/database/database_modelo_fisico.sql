-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE produtos (
preco VARCHAR(10),
prod_id VARCHAR(10) PRIMARY KEY,
image_Url VARCHAR(10),
descricao VARCHAR(10)
)

CREATE TABLE Vendas (
vendas_id VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Clientes (
cliente_id VARCHAR(10) PRIMARY KEY,
nome_titular VARCHAR(10),
numero_do_cartao VARCHAR(10),
csv VARCHAR(10),
vencimento VARCHAR(10),
prod_id VARCHAR(10),
FOREIGN KEY(prod_id) REFERENCES produtos (prod_id)
)

CREATE TABLE possui (
vendas_id VARCHAR(10),
cliente_id VARCHAR(10),
FOREIGN KEY(vendas_id) REFERENCES Vendas (vendas_id),
FOREIGN KEY(cliente_id) REFERENCES Clientes (cliente_id)
)

