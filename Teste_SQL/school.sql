--Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'.
SELECT
	t.dia_da_semana
FROM
	turma t
JOIN
	disciplina d
	ON t.disciplina_id = d.id
where
	professor.nome = 'JOAO PEDRO';

--Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 'FISICA'.

SELECT
	ALUNO.Nome
FROM
	aluno
JOIN 
	disciplina 
	ON disciplina.id = turma.disciplina_id
JOIN
	TURMA
	ON aluno_id.id = ALUNO.id
WHERE 
	DISCIPLINA.nome = 'MATEMATICA' OR DISCIPLINA.nome = 'FISICA' 


-- Dias que tenham aula de matemática
SELECT 
	t.dia_da_semana 
FROM 
	turma t
JOIN disciplina d
	ON t.disciplina_id = d.id
WHERE d.nome = 'MATEMATICA';


-- Alunos de matemática que não frequentam quimica
SELECT 
	aluno.nome 
FROM 
	aluno
JOIN 
	turma 
	ON aluno.id = turma.aluno_id
JOIN disciplina 
	ON turma.disciplina_id = disciplina.id
WHERE 
	disciplina.nome = 'MATEMATICA'
AND 
	aluno.id 
	NOT IN (
        	SELECT aluno.id FROM aluno
          		JOIN turma ON turma.aluno_id = aluno.id
          		JOIN disciplina ON disciplina.id = turma.disciplina_id
          		WHERE disciplina.nome = 'QUIMICA'
        );