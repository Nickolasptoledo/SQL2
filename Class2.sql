CREATE DATABASE CLASSIFICADOS2

USE CLASSIFICADOS2

CREATE TABLE TB_USUARIO(
Nome varchar(250),
Email varchar(250),
Senha varchar(250),
);

CREATE TABLE TB_ANUNCIO(
CATEGORIA varchar(250),
DESCRICAO	varchar(250),
PRECO int,
contato varchar(250),
);

INSERT INTO TB_USUARIO
VALUES 
('Fabio', 'fabinrag','raglover'),
( 'Vinicius', 'vinaodamassa', 'futamericano'),
('Amanda', 'MandinhaHtinha', 'faztudo'),
( 'thaina', 'thaibarbs', '123456');

SELECT * FROM TB_USUARIO
WHERE  NOME LIKE 'A%';