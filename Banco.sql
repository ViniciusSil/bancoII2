CREATE DATABASE teste;
USE teste;

CREATE TABLE cliente(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Idade INT
);

CREATE TABLE produto (
    idPRODUTO SERIAL PRIMARY KEY,
    NomeProduto VARCHAR(255)
);

INSERT INTO cliente ( Nome, Idade) VALUES
    ('Alice', 20),
    ('Boby', 22),
    ('Pedro', 21);

    INSERT INTO produto (NomeProduto) VALUES
    ('Controle'),
    ('Notebook'),
    ('Mouse');


ALTER TABLE cliente
ADD COLUMN idPRODUTO INT,
ADD FOREIGN KEY (idPRODUTO) REFERENCES produto(idPRODUTO);

SELECT *  FROM produto

SELECT cliente.Nome, produto.NomeProduto FROM cliente 
JOIN produto ON cliente.idPRODUTO = produto.idPRODUTO