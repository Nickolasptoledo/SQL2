CREATE DATABASE MARKETPLACE2

use MARKETPLACE2


CREATE TABLE TB_USUARIOS(
ID_Usuarios INT NOT NULL PRIMARY KEY,
Nome varchar(250) NOT NULL,
Usuario varchar(250) NOT NULL,
Senha varchar(250) NOT NULL,
CPF int NOT NULL,
);

CREATE TABLE TB_CARRINHO(
ID_Carrinho INT NOT NULL PRIMARY KEY,
Produtos varchar(250),
Preco FLOAT,

FK_Comprador INT NOT NULL,
FK_Produto INT NOT NULL,

FOREIGN KEY (FK_Comprador) REFERENCES TB_USUARIOS (ID_Usuarios),FOREIGN KEY (FK_Produto) REFERENCES TB_PRODUTO (ID_Produto)
);

CREATE TABLE TB_PRODUTO(
ID_Produto INT NOT NULL PRIMARY KEY,
Categoria varchar(250) NOT NULL,
Produto varchar(250) NOT NULL,
quantidade INT NOT NULL,
Valor float NOT NULL,
);

INSERT INTO TB_USUARIOS
VALUES 
(01, 'Fabio', 'fabinrag', 'raglover', 47679725),
(02, 'Vinicius', 'vinaodamassa', 'futamericano', 47679726),
(03, 'Amanda', 'MandinhaHtinha', 'faztudo', 47679727),
(04, 'thaina', 'thaibarbs', '123456', 47679728);

SELECT * FROM TB_USUARIOS
WHERE  NOME LIKE 'A%';

DROP TABLE TB_USUARIOS
DROP TABLE TB_CARRINHO
