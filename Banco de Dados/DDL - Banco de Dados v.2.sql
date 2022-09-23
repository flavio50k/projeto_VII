CREATE DATABASE iCad;

CREATE TYPE situacao_usuario AS ENUM('a', 'i', 'b');

CREATE TABLE permissao (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(10) NOT NULL  -- (admin, superadmin ou usuario)
);

CREATE TABLE cidade (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(60) NOT NULL
);

CREATE TABLE estado (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(30) NOT NULL
);

CREATE TABLE pais (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(60) NOT NULL
);

CREATE TABLE tipo_requisito (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(13) NOT NULL
);

CREATE TABLE pessoa (
	id SERIAL PRIMARY KEY,
	usuario VARCHAR(50) NOT NULL,
	senha VARCHAR(64) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	--cpf BIGINT NOT NULL,
	telefone INT NOT NULL,
	data DATE NOT NULL,
	email VARCHAR(150) NOT NULL,
	situacao situacao_usuario NOT NULL,
	fk_permissao INT NOT NULL,
	fk_cidade INT NOT NULL,
	fk_estado INT NOT NULL,
	fk_pais INT NOT NULL,
	CONSTRAINT fk_permissao FOREIGN KEY (id) REFERENCES permissao (id),
	CONSTRAINT fk_cidade FOREIGN KEY (id) REFERENCES cidade (id),
	CONSTRAINT fk_estado FOREIGN KEY (id) REFERENCES estado (id),
	CONSTRAINT fk_pais FOREIGN KEY (id) REFERENCES pais (id)
);

CREATE TABLE requisito (
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(50) NOT NULL,
	descricao TEXT NOT NULL,
	codigo INT NOT NULL,
	complexidade INT NOT NULL,
	prioridade VARCHAR(10) NOT NULL,
	fk_tipo_requisito INT NOT NULL,
	CONSTRAINT fk_tipo_requisito FOREIGN KEY (id) REFERENCES tipo_requisito (id)
);

CREATE TABLE projeto (
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	descricao TEXT NOT NULL
);

CREATE TABLE pessoa_projeto (
	fk_pessoa INT REFERENCES pessoa (id),
	fk_projeto INT REFERENCES projeto (id),
	CONSTRAINT pessoa_projeto_pkey PRIMARY KEY (fk_pessoa, fk_projeto)
);

CREATE TABLE projeto_requisito (
	fk_requisito INT REFERENCES requisito (id),
	fk_projeto INT REFERENCES projeto (id),
	CONSTRAINT projeto_requisito_pkey PRIMARY KEY (fk_requisito, fk_projeto)
);