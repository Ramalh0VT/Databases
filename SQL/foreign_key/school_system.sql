SHOW TABLES;

CREATE TABLE IF NOT EXISTS alunos(
	id_aluno INT AUTO_INCREMENT,
	nome_aluno VARCHAR(200) NOT NULL,
	data_nasc DATE NULL,
	PRIMARY KEY(id_aluno)	
);

DESCRIBE contatos;

CREATE TABLE contatos(
	id_contato INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(50) NOT NULL UNIQUE,
	fone VARCHAR(30) NOT NULL,
	id_aluno INT NOT NULL,
	FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);
