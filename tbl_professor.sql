--Criando Tabela
USE db_escola
CREATE TABLE tbl_professor(
	id_professor INT PRIMARY KEY IDENTITY,
	nome_professor VARCHAR(100),
	cpf_professor INT
)

--Inserindo Registros
USE db_escola

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

USE db_escola
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
UPDATE tbl_professor SET salario_professor = 15000 WHERE id_professor = 11
UPDATE tbl_professor SET salario_professor = 9000 WHERE id_professor = 12
UPDATE tbl_professor SET salario_professor = 15000 WHERE id_professor = 13


--conferir
SELECT * FROM tbl_professor
