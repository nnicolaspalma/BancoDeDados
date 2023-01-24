--Criando a tablela
USE db_escola
CREATE TABLE tbl_curso(
	id_curso INT PRIMARY KEY IDENTITY,
	tempo_curso  INT,
	sigla_curso VARCHAR(10),
	nome_curso VARCHAR(40)
)

--Inserindo Registros
USE db_escola

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