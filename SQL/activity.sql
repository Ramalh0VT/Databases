-- Página 69

USE db_2td;

CREATE TABLE clientes (
id INT PRIMARY KEY,
nome VARCHAR(100),
idade INT,
cidade VARCHAR(100),
email VARCHAR(150),
renda DECIMAL(10,2),
data_cadastro DATE
);

INSERT INTO clientes (id, nome, idade, cidade, email, renda, data_cadastro) VALUES
(1, 'Ana Silva', 28, 'São Paulo', 'ana.silva@email.com', 4200.00, '2023-05-10'),
(2, 'Carlos Mendes', 35, 'Rio de Janeiro', 'carlos@email.com', 5200.50, '2022-11-20'),
(3, 'Fernanda Costa', 22, 'Belo Horizonte', NULL, 3100.75, '2023-01-05'),
(4, 'João Lima', 40, 'São Paulo', 'joao@email.com', 6800.90, '2022-08-17'),
(5, 'Mariana Rocha', 30, 'Curitiba', 'mariana@email.com', 4100.00, '2023-07-01'),
(6, 'Bruno Souza', 19, 'Fortaleza', NULL, 2100.20, '2023-03-12'),
(7, 'Laura Almeida', 33, 'São Paulo', 'laura@email.com', 6200.00, '2021-09-30'),
(8, 'Rodrigo Oliveira', 26, 'Recife', 'rodrigo@email.com', 3300.00, '2022-12-10'),
(9, 'Patrícia Nunes', 45, 'Rio de Janeiro', 'patricia@email.com', 7200.00, '2023-02-02'),
(10, 'Thiago Moreira', 31, 'São Paulo', 'thiago@email.com', 4700.00, '2023-04-25');

-- Página 70

-- 1

SELECT * FROM clientes WHERE idade > 30;

-- 2

SELECT nome, idade FROM clientes WHERE idade < 25;

-- 3

SELECT nome, renda FROM clientes WHERE renda BETWEEN 4000 AND 6000;

-- 4

SELECT nome FROM clientes
CASE
	WHERE cidade LIKE 'São Paulo' THEN 'São Paulo' AS cidade,
	WHERE cidade LIKE 'Rio de Janeiro' THEN 'Rio de Janeiro' AS cidade
END;

-- 5

SELECT nome, email FROM clientes WHERE email IS NULL;

-- 6

SELECT nome FROM clientes WHERE nome LIKE "A%";

-- 7

SELECT nome FROM clientes WHERE nome LIKE "%a";

-- 8

SELECT nome, idade FROM clientes
ORDER BY idade ASC;

-- 9 

SELECT nome, renda FROM clientes
ORDER BY renda DESC;

-- 10

SELECT nome, data_cadastro, idade FROM clientes
WHERE data_cadastro LIKE '2023%' AND idade > 30; 

-- Página 71

SELECT nome, data_cadastro,renda,idade,email FROM clientes
WHERE data_cadastro LIKE '2023%' AND nome LIKE '%a' AND renda > 3000 AND email IS NULL ORDER BY idade DESC LIMIT 5 ;

-- Página 81
DROP TABLE produtos;

CREATE TABLE produtos (
id INT PRIMARY KEY,
nome VARCHAR(100),
categoria VARCHAR(50),
preco DECIMAL(10,2),
estoque INT,
data_cadastro DATE,
ativo BOOLEAN
);

INSERT INTO produtos (id, nome, categoria, preco, estoque, data_cadastro, ativo) VALUES
(1, 'Smartphone X1', 'Eletrônicos', 1200.00, 50, '2023-01-10', TRUE),
(2, 'Notebook Y2', 'Eletrônicos', 3500.50, 30, '2023-02-15', TRUE),
(3, 'Cadeira Escritório', 'Móveis', 450.00, 20, '2022-12-05', TRUE),
(4, 'Mesa Escritório', 'Móveis', 800.00, 15, '2023-03-01', TRUE),
(5, 'Fone de Ouvido Z', 'Eletrônicos', 150.00, 0, '2023-04-12', FALSE),
(6, 'Lampada LED', 'Iluminação', 80.00, 100, '2023-01-25', TRUE),
(7, 'Monitor 24"', 'Eletrônicos', 900.00, 10, '2023-05-10', TRUE),
(8, 'Sofá 3 lugares', 'Móveis', 2200.00, 5, '2022-11-20', TRUE),
(9, 'Teclado Gamer', 'Eletrônicos', 300.00, 25, '2023-06-15', TRUE),
(10, 'Abajur de Mesa', 'Iluminação', 120.00, 0, '2023-07-01', FALSE);

-- Página 82

-- 1

UPDATE produtos SET preco = 1100 WHERE id = 1;

-- 2

UPDATE produtos SET estoque = estoque - 5 WHERE categoria = 'Eletrônicos' AND estoque > 10;

-- 3

UPDATE produtos SET ativo = FALSE WHERE estoque = 0;

-- 4

DELETE FROM produtos WHERE categoria = 'Iluminação' AND data_cadastro < '2023-02-01';

-- 5 

DELETE FROM produtos WHERE estoque = 0 AND ativo = FALSE;

-- 6

UPDATE produtos SET nome = 'Monitor 24 polegadas' WHERE nome = 'Monitor 24';

-- 7

DELETE FROM produtos WHERE data_cadastro > 01/06/2023;

-- 8

UPDATE produtos SET estoque = 50 WHERE ativo = FALSE;

-- 9

DELETE FROM produtos WHERE nome LIKE '%Escritório%' AND preco < 500;

-- Página 83
