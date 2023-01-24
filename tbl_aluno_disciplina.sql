USE db_escola
CREATE TABLE tbl_aluno_disciplina(
	id_aluno_disciplina INT PRIMARY KEY IDENTITY,
	id_aluno INT FOREIGN KEY REFERENCES tbl_aluno(id_aluno),
	id_disciplina INT FOREIGN KEY REFERENCES tbl_disciplina(id_disciplina),
	nota_aluno_disciplina INT,
	faltas_aluno_disciplina INT
)
--Inserindo Registros
USE db_escola

INSERT INTO tbl_aluno_disciplina VALUES(10,6,10,0)
INSERT INTO tbl_aluno_disciplina VALUES(11,12,8,9)
INSERT INTO tbl_aluno_disciplina VALUES(21,6,10,2) 
INSERT INTO tbl_aluno_disciplina VALUES(25,6,7,4) 
INSERT INTO tbl_aluno_disciplina VALUES(26,7,8,5) 
INSERT INTO tbl_aluno_disciplina VALUES(27,9,5,5)
INSERT INTO tbl_aluno_disciplina VALUES(28,7,5,10) 
INSERT INTO tbl_aluno_disciplina VALUES(30,9,9,0) 
INSERT INTO tbl_aluno_disciplina VALUES(31,8,7,8)

--Testando

SELECT * FROM tbl_aluno_disciplina
SELECT * FROM tbl_aluno
SELECT * FROM tbl_disciplina
SELECT * FROM tbl_professor 
SELECT * FROM tbl_curso

DELETE FROM tbl_aluno_disciplina WHERE id_aluno = 10