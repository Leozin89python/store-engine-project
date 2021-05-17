CREATE DATABASE cardstore;

DROP DATABASE cardstore;


CREATE TABLE clientes(
	cliente_id SERIAL PRIMARY KEY,
	nome_titular VARCHAR(50) NOT NULL,
	numero_cartao VARCHAR(20) NOT NULL,
	csv VARCHAR(3) NOT NULL
);

/*ver documentação*/
ALTER TABLE clientes;

DROP TABLE clientes;


CREATE TABLE produtos(
	prod_id SERIAL PRIMARY KEY,
	nome_produto VARCHAR(50) NOT NULL,
	image_url VARCHAR(100),
	preco DECIMAL(10,2) NOT NULL,
	clienteid BIGINT,
	FOREIGN KEY(clienteid) REFERENCES clientes(cliente_id)
);

/*ver documentação*/
ALTER TABLE produtos;

DROP TABLE produtos;


CREATE TABLE vendas();

/*ver documentação*/
ALTER TABLE vendas;

DROP TABLE vendas;



INSERT INTO clientes VALUES(1,'Samuel Rosa','0000 0000 0000 1111','010');
INSERT INTO clientes VALUES(2,'Paulo Rosa','1111 0000 0000 1111','011');

SELECT * FROM clientes;


INSERT INTO produtos VALUES(1,'samsumg galaxy j1 mini','https://localhost:8080/images',239.26,2);
INSERT INTO produtos VALUES(2,'samsumg galaxy j7 prime','https://localhost:8080/images',999.26,1);

SELECT * FROM produtos;

SELECT c.nome_titular, p.nome_produto, p.preco
FROM clientes c
INNER JOIN produtos p
ON cliente_id = clienteid  ;

