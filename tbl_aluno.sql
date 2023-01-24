--CREANDO TABELA
USE db_escola
CREATE TABLE tbl_aluno(
	id_aluno INT PRIMARY KEY IDENTITY,
	nome_aluno VARCHAR(100),
	id_curso INT FOREIGN KEY REFERENCES tbl_curso(id_curso)
)

--Inserindo Registros
USE db_escola

INSERT INTO tbl_aluno VALUES (1234567891,'Leonardo',1)
INSERT INTO tbl_aluno VALUES (1987654321,'Agatha',2)
INSERT INTO tbl_aluno VALUES (1654098765,'Samira',1)
INSERT INTO tbl_aluno VALUES (1367280345,'Bernardo',5)
INSERT INTO tbl_aluno VALUES (1647382938,'Marcos',1)
INSERT INTO tbl_aluno VALUES (1098783499,'Maria',8)
INSERT INTO tbl_aluno VALUES (1200874888,'Ronaldo',9)
INSERT INTO tbl_aluno VALUES (1357885858,'Cristiano',6)
INSERT INTO tbl_aluno VALUES (1567987223,'Frederico',4)
INSERT INTO tbl_aluno VALUES (1287273751,'Matheus',10)

--Conferindo

SELECT * FROM tbl_aluno