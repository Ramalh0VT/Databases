(1, 'Carlos Silva', 'Analista', 4500.00, 'TI', '2020-03-15', TRUE),
(2, 'Mariana Costa', 'Gerente', 8500.00, 'RH', '2018-07-01', TRUE),
(3, 'João Pereira', 'Auxiliar', 2200.00, 'Financeiro', '2021-01-20', TRUE),
(4, 'Ana Santos', 'Analista', 4800.00, 'TI', '2019-11-30', TRUE),
(5, 'Paulo Souza', 'Gerente', 9000.00, 'Financeiro', '2017-05-10', FALSE),
(6, 'Luciana Lima', 'Assistente', 2800.00, 'RH', '2022-06-12', TRUE),
(7, 'Pedro Oliveira', 'Auxiliar', 2100.00, 'TI', '2023-01-05', TRUE),
(8, 'Fernanda Rocha', 'Gerente', 9200.00, 'TI', '2016-09-17', TRUE),
(9, 'Ricardo Alves', 'Assistente', 2700.00, 'Financeiro', '2020-12-01', FALSE),
(10, 'Beatriz Melo', 'Analista', 4600.00, 'RH', '2021-03-22', TRUE);

-- Página 84

-- 1

UPDATE funcionarios SET salario = salario + 15 * (salario / 100) WHERE departamento = "TI" AND salario < 5000;

SELECT * FROM funcionarios;

-- 2

UPDATE funcionarios SET ativo = FALSE WHERE data_admissao < '2018-12-31';

-- 3

DELETE FROM funcionarios WHERE ativo = FALSE AND cargo = 'Assistente';
