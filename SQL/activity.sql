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

SELECT nome, data_cadastro,renda,idade FROM clientes
WHERE data_cadastro LIKE '2023%' AND nome LIKE '%a' AND renda > 3000 ORDER BY idade DESC LIMIT 5 ;

-- Página 81






