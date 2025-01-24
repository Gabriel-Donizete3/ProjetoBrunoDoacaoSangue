CREATE DATABASE doacao_sangue;

CREATE TABLE doador_financeiro(
idDoadorFinanceiro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cpf VARCHAR (12) NOT NULL,
data_nascimento VARCHAR (10),
logradouro VARCHAR (50),
bairro VARCHAR (50),
municipio VARCHAR(50),
unidade_federativa VARCHAR (50),
telefone VARCHAR (11),
tipo_doador VARCHAR (10)
);

CREATE TABLE doador_de_sangue(
idDoadorSangue INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cpf VARCHAR (12) NOT NULL,
data_nascimento VARCHAR (10),
logradouro VARCHAR (50),
bairro VARCHAR (50),
municipio VARCHAR(50),
unidade_federativa VARCHAR (50),
telefone VARCHAR (11),
tipo_sanguineo VARCHAR (3),
peso_kg VARCHAR (3)
);


SET SQL_SAFE_UPDATES = 0;


SELECT * FROM doador_financeiro;
DROP TABLE doador_financeiro;
INSERT INTO doador_financeiro (
cpf,data_nascimento,logradouro,bairro,municipio,
unidade_federativa,telefone,tipo_doador) VALUES
("123","2005-05-13","Praça do Zezinho","Algum Bairro
","Algum Município","MG","99999999999","Mensal");


SELECT * FROM doador_de_sangue;
DROP TABLE doador_de_sangue;
INSERT INTO doador_de_sangue (
cpf,data_nascimento,logradouro,bairro,municipio,
unidade_federativa,telefone,tipo_sanguineo,peso_kg) VALUES
("999999999-99","2005-05-13","Praça do Zezinho","Algum Bairro
","Algum Município","MG","99999999999","AB+","80.7");

ALTER TABLE doador_de_sangue
MODIFY COLUMN peso_kg VARCHAR (5);

ALTER TABLE doador_de_sangue
MODIFY COLUMN data_nascimento VARCHAR (20);

ALTER TABLE doador_financeiro
MODIFY COLUMN data_nascimento VARCHAR (20);

CREATE DATABASE testeDB;

ALTER TABLE doador_financeiro CHANGE COLUMN id  idDoadorFinanceiro INT;

