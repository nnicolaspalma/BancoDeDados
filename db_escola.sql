--Criando o Banco de dados
--CREATE DATABASE db_escola


--Criando tabelas



--tbl_curso

--Criando a tablela
--USE db_escola
CREATE TABLE tbl_curso(
	id_curso INT PRIMARY KEY IDENTITY(1,1),
	tempo_curso  INT,
	sigla_curso VARCHAR(10),
	nome_curso VARCHAR(40)
)

--Inserindo Registros
--USE db_escola

INSERT INTO tbl_curso VALUES (6,'DS','Desenvolvimento de Sistemas')
INSERT INTO tbl_curso VALUES (12,'ADM','Administra��o')
INSERT INTO tbl_curso VALUES (18,'AV','Agenciamento de Viagem')
INSERT INTO tbl_curso VALUES (12,'C','Contabilidade')
INSERT INTO tbl_curso VALUES (6,'DI','Desing de Interiores')
INSERT INTO tbl_curso VALUES (12,'E','Edifica��es')
INSERT INTO tbl_curso VALUES (6,'II','Informatica para Internet')
INSERT INTO tbl_curso VALUES (18,'L','Logistica')
INSERT INTO tbl_curso VALUES (12,'RH','Recursos Humanos')
INSERT INTO tbl_curso VALUES (18,'ST','Seguran�a do Trabalho')


--Conferindo
SELECT * FROM tbl_curso

--tbl_professor

--Criando Tabela
--USE db_escola
CREATE TABLE tbl_professor(
	id_professor INT PRIMARY KEY IDENTITY(1,1),
	nome_professor VARCHAR(100),
	cpf_professor INT
)

--Inserindo Registros
--USE db_escola

INSERT INTO tbl_professor VALUES('Emerson', 146842313)
INSERT INTO tbl_professor VALUES('Alex',108343124)
INSERT INTO tbl_professor VALUES('Tharissa',1679094795)
INSERT INTO tbl_professor VALUES('Anderson',1578928668) 
INSERT INTO tbl_professor VALUES('Andrea',1209752739) 
INSERT INTO tbl_professor VALUES('Amanda',1353847205) 
INSERT INTO tbl_professor VALUES('Carlos Eduardo',1312923306)
INSERT INTO tbl_professor VALUES('Michel',1074933385) 
INSERT INTO tbl_professor VALUES('Ricardo',1973569374) 
INSERT INTO tbl_professor VALUES('Ronaldo',1267794643)

--Testando

SELECT * FROM tbl_professor

--alterando

--USE db_escola
ALTER TABLE tbl_professor ADD salario_professor INT
ALTER TABLE tbl_professor ADD categoria_professor VARCHAR(100)

--atualizar
UPDATE tbl_professor SET salario_professor = 15000 WHERE id_professor = 3
UPDATE tbl_professor SET salario_professor = 10000 WHERE id_professor = 4
UPDATE tbl_professor SET salario_professor = 12000 WHERE id_professor = 5
UPDATE tbl_professor SET salario_professor = 14000 WHERE id_professor = 7
UPDATE tbl_professor SET salario_professor = 13000 WHERE id_professor = 8
UPDATE tbl_professor SET salario_professor = 16000 WHERE id_professor = 9
UPDATE tbl_professor SET salario_professor = 20000 WHERE id_professor = 10
UPDATE tbl_professor SET salario_professor = 15000 WHERE id_professor = 6
UPDATE tbl_professor SET salario_professor = 9000 WHERE id_professor = 2
UPDATE tbl_professor SET salario_professor = 15000 WHERE id_professor = 1



UPDATE tbl_professor SET categoria_professor = 'A'  WHERE id_professor = 3
UPDATE tbl_professor SET categoria_professor = 'B'  WHERE id_professor = 4
UPDATE tbl_professor SET categoria_professor = 'A'  WHERE id_professor = 5
UPDATE tbl_professor SET categoria_professor = 'B'  WHERE id_professor = 7
UPDATE tbl_professor SET categoria_professor = 'A'  WHERE id_professor = 8
UPDATE tbl_professor SET categoria_professor = 'B'  WHERE id_professor = 9
UPDATE tbl_professor SET categoria_professor = 'A'  WHERE id_professor = 10
UPDATE tbl_professor SET categoria_professor = 'B'  WHERE id_professor = 5
UPDATE tbl_professor SET categoria_professor = 'A'  WHERE id_professor = 2
UPDATE tbl_professor SET categoria_professor = 'B'  WHERE id_professor = 1



--conferir
SELECT * FROM tbl_professor

--tbl_aluno

--CRIANDO TABELA
--USE db_escola
CREATE TABLE tbl_aluno(
	id_aluno INT PRIMARY KEY IDENTITY(1,1),
	cpf VARCHAR(11) ,
	nome_aluno VARCHAR(100),
	id_curso INT FOREIGN KEY REFERENCES tbl_curso(id_curso)
)

--Inserindo Registros
--USE db_escola

INSERT INTO tbl_aluno VALUES ('1234567891','Leonardo',1)
INSERT INTO tbl_aluno VALUES ('1987654321','Agatha',2)
INSERT INTO tbl_aluno VALUES ('1654098765','Samira',1)
INSERT INTO tbl_aluno VALUES ('1367280345','Bernardo',5)
INSERT INTO tbl_aluno VALUES ('1647382938','Marcos',1)
INSERT INTO tbl_aluno VALUES ('1098783499','Maria',8)
INSERT INTO tbl_aluno VALUES ('1200874888','Ronaldo',9)
INSERT INTO tbl_aluno VALUES ('1357885858','Cristiano',6)
INSERT INTO tbl_aluno VALUES ('1567987223','Frederico',4)
INSERT INTO tbl_aluno VALUES ('1287273751','Matheus',10)

--Conferindo

SELECT * FROM tbl_aluno

--tbl_disciplina

--USE db_escola
CREATE TABLE tbl_disciplina(
	id_disciplina INT PRIMARY KEY IDENTITY(1,1),
	nome_disciplina VARCHAR(30),
	id_professor INT FOREIGN KEY REFERENCES tbl_professor(id_professor),
	id_curso INT FOREIGN KEY REFERENCES tbl_curso(id_curso),
)

--Inserindo Registros
--USE db_escola

INSERT INTO tbl_disciplina VALUES('Programação Mobile',3,1)
INSERT INTO tbl_disciplina VALUES('Programação Web II',5,1)
INSERT INTO tbl_disciplina VALUES('Banco de Dados I',8,1)
INSERT INTO tbl_disciplina VALUES('Banco de Dados II',9,1) 
INSERT INTO tbl_disciplina VALUES('Programação e Algoritimos',7,1) 
INSERT INTO tbl_disciplina VALUES('Desenvolvimento de Sistemas',7,1) 
INSERT INTO tbl_disciplina VALUES('Tecnica de Programação',4,1)
INSERT INTO tbl_disciplina VALUES('Calculo I',10,8) 
INSERT INTO tbl_disciplina VALUES('Calculo II',10,8) 
INSERT INTO tbl_disciplina VALUES('Analise de curriculo',10,2)

--Testando

SELECT * FROM tbl_disciplina
SELECT * FROM tbl_professor 
SELECT * FROM tbl_curso

--tbl_aluno_disciplina

--USE db_escola
CREATE TABLE tbl_aluno_disciplina(
	id_aluno_disciplina INT PRIMARY KEY IDENTITY(1,1),
	id_aluno INT FOREIGN KEY REFERENCES tbl_aluno(id_aluno),
	id_disciplina INT FOREIGN KEY REFERENCES tbl_disciplina(id_disciplina),
	nota_aluno_disciplina INT,
	faltas_aluno_disciplina INT
)
--Inserindo Registros
--USE db_escola

INSERT INTO tbl_aluno_disciplina VALUES(10,6,10,0)
INSERT INTO tbl_aluno_disciplina VALUES(9,8,8,9)
INSERT INTO tbl_aluno_disciplina VALUES(10,6,10,2) 
INSERT INTO tbl_aluno_disciplina VALUES(2,6,7,4) 
INSERT INTO tbl_aluno_disciplina VALUES(1,7,8,5) 
INSERT INTO tbl_aluno_disciplina VALUES(3,9,5,5)
INSERT INTO tbl_aluno_disciplina VALUES(7,7,5,10) 
INSERT INTO tbl_aluno_disciplina VALUES(8,9,9,0) 
INSERT INTO tbl_aluno_disciplina VALUES(9,8,7,8)

--Testando

SELECT * FROM tbl_aluno_disciplina
SELECT * FROM tbl_aluno
SELECT * FROM tbl_disciplina
SELECT * FROM tbl_professor 
SELECT * FROM tbl_curso