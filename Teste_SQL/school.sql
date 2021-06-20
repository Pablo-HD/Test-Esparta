--Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'.
SELECT
	t.dia_da_semana
FROM
	turma t
JOIN
	disciplina d
	ON d.nome = 'MATEMATICA'

--Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 'FISICA'.

SELECT
	ALUNO.Nome
FROM
	(SELECT * FROM  ALUNO_TURMA)
JOIN
	ALUNO
	ON ALUNO.id = ALUNO_TURMA.aluno_id
JOIN
	TURMA
	ON TURMA.id = ALUNO_TURMA.turma_id
JOIN
	DISCIPLINA
	ON TURMA.disciplina_id = DISCIPLINA.id
	WHERE DISCIPLINA.nome = 'MATEMATICA' AND WHERE DISCIPLINA.nome = 'FISICA' 
