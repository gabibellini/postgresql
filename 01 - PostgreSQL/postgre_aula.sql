-- Aula 1

CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em timestamp	
);

SELECT * FROM aluno;

-- Aula 2

INSERT INTO aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
)

VALUES (
	'Gabrielle',
	'12345678901',
	'to kiss in cars and downtown bars were all we needed you drew stars around my scars and now im bleeding',
	33,
	100.50,
	1.70,
	TRUE,
	'1990-04--30',
	'17:30:00',
	'2023--07--19 12:32:45'
);

SELECT *
	FROM aluno
WHERE id = 2;

UPDATE aluno
	SET nome = 'Nico',
	cpf = '14725836912',
	observacao = 'teste',
	idade = '38',
	dinheiro = '15.23',
	altura = '1.80',
	ativo = 'False',
	data_nascimento = '1985--02--01',
	hora_aula = '15:30:00',
	matriculado_em = '2022--01--31 09:41:23'
	WHERE id = 2;


SELECT *
  FROM aluno
 WHERE nome = 'Nico';
 
DELETE
  FROM aluno
 WHERE nome = 'Nico';

-- Aula 3
SELECT nome AS "Nome do aluno",
	   idade,
	   matriculado_em AS quando_se_matriculou
	   FROM aluno;

INSERT INTO aluno (nome) VALUES ('Jeon Jungkook');
INSERT INTO aluno (nome) VALUES ('Kim Taehyung');
INSERT INTO aluno (nome) VALUES ('Park Jimin');
INSERT INTO aluno (nome) VALUES ('Jung Hoseok');

SELECT *
  FROM aluno
 WHERE nome LIKE '%n%';
 
SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40
 
SELECT *
  FROM aluno
 WHERE ativo IS NULL 
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Kim Seokjin'
    OR nome LIKE 'Kim Namjoon'

-- Aula 4
DROP TABLE cursos;
CREATE TABLE cursos(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO cursos (id, nome) VALUES (NULL, NULL);
INSERT INTO cursos (id, nome) VALUES (1, NULL);
INSERT INTO cursos (id, nome) VALUES (NULL, 'HTML');

INSERT INTO cursos (id, nome) VALUES (1, 'HTML');
INSERT INTO cursos (id, nome) VALUES (2, 'Javascrip');

SELECT * FROM cursos;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Jeon Jungkook');
INSERT INTO aluno (nome) VALUES ('Min Yoongi');

-- Aula 5
SELECT * FROM aluno;
SELECT * FROM cursos;

DROP TABLE aluno_curso; 

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	   
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
	REFERENCES cursos (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4,1);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM cursos WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM cursos WHERE id = 1;

SELECT * FROM aluno WHERE id = 3;
SELECT * FROM cursos WHERE id = 1;

SELECT * FROM aluno_curso;

SELECT * FROM aluno;
SELECT * FROM cursos;

SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  
  INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);
  
  INSERT INTO aluno (nome) VALUES ('Jin');
  
  INSERT INTO cursos (id, nome) VALUES (3, 'CSS')
  
  SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  LEFT JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  LEFT JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  
  SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  RIGHT JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  RIGHT JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  
  SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  FULL JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  FULL JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  
    SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  CROSS JOIN cursos
  
INSERT INTO aluno (nome) VALUES ('RM')

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM cursos;

DELETE FROM aluno WHERE id =1;

DROP TABLE aluno_curso
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	   
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	
	FOREIGN KEY (curso_id)
	REFERENCES cursos (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  
DELETE FROM aluno WHERE id =1;

UPDATE aluno
SET id = 10
WHERE id = 1;

SELECT * FROM aluno

-- Aula 6

CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');

SELECT *
  FROM funcionarios
  ORDER BY nome, matricula DESC
  
SELECT *
  FROM funcionarios
  ORDER BY 3, 4, 2
  
SELECT *
  FROM funcionarios
  ORDER BY 4 DESC, nome DESC, 2 ASC
  
SELECT aluno.nome as aluno,
	   cursos.nome as curso
  FROM aluno
  JOIN aluno_curso  ON aluno_curso.aluno_id = aluno.id
  JOIN cursos       ON cursos.id            = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, cursos.nome
  
SELECT *
  FROM funcionarios
  ORDER BY nome
  LIMIT 5
OFFSET 0;

SELECT COUNT (id),
	SUM (id),
	MAX (id),
	MIN (id),
	ROUND(AVG(id), 0)
 FROM funcionarios;
 
SELECT DISTINCT
       nome,
	   sobrenome
  FROM funcionarios
  ORDER BY nome;
  
SELECT 
       nome,
	   sobrenome
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;
  
SELECT *
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN cursos ON cursos.id = aluno_curso.curso_id

SELECT cursos.nome,
       COUNT(aluno.id)
  FROM aluno
  JOIN aluno_curso  ON aluno.id = aluno_curso.aluno_id
  JOIN cursos       ON cursos.id            = aluno_curso.curso_id
GROUP BY 1
ORDER BY 1

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM cursos;

SELECT cursos.nome,
       COUNT(aluno.id)
	FROM cursos
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = cursos.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	-- WHERE cursos.nome = 'Javascrip'
GROUP BY 1
    HAVING COUNT(aluno.id) > 0
	
SELECT nome,
	COUNT(id)
FROM funcionarios
GROUP BY nome
HAVING COUNT(id) = 1;