#1
USE EduPlus;
SELECT nome, email FROM instrutor;

#2
USE EduPlus;
SELECT * FROM cursos WHERE ativo = 1;

#3
USE EduPlus;
SELECT cursos.nome, COUNT(cursoAlunos.matricula) AS total_alunos
FROM cursos
INNER JOIN cursoAlunos ON cursos.idCurso = cursoAlunos.idCurso
GROUP BY cursos.idCurso;

#4
USE EduPlus;
SELECT alunos.nome, alunos.matricula
FROM alunos
INNER JOIN cursoAlunos ON cursoAlunos.matricula = alunos.matricula
GROUP BY alunos.matricula
HAVING COUNT(DISTINCT cursoAlunos.idCurso) > 5;

#5
USE EduPlus;
SELECT * FROM cursos 
WHERE TIMESTAMPDIFF(MONTH, dataLancamento, CURDATE()) <= 6;

#6
USE EduPlus;
SELECT 
    cursos.nome AS nome_do_curso, 
    COUNT(cursoAlunos.matricula) AS total_alunos
FROM cursos
INNER JOIN cursoAlunos ON cursos.idCurso = cursoAlunos.idCurso
GROUP BY cursos.idCurso
ORDER BY total_alunos DESC
LIMIT 5;

#7
USE EduPlus;
SELECT 
    cursos.nome AS nome_do_curso,
    COUNT(DISTINCT cursoAlunos.matricula) AS total_alunos,
    COUNT(DISTINCT CASE 
                    WHEN (infoAlunos.nota1 + infoAlunos.nota2 + infoAlunos.nota3) / 3 >= 7 
                    THEN cursoAlunos.matricula 
                    ELSE NULL 
                  END) AS alunos_aprovados,
    ROUND(
        (COUNT(DISTINCT CASE 
                         WHEN (infoAlunos.nota1 + infoAlunos.nota2 + infoAlunos.nota3) / 3 >= 7 
                         THEN cursoAlunos.matricula 
                         ELSE NULL 
                       END) / COUNT(DISTINCT cursoAlunos.matricula)) * 100, 
        2
    ) AS taxa_conclusao
FROM cursos
INNER JOIN cursoAlunos ON cursos.idCurso = cursoAlunos.idCurso
LEFT JOIN infoAlunos ON cursoAlunos.matricula = infoAlunos.matricula
WHERE cursos.ativo = 0
GROUP BY cursos.idCurso
ORDER BY taxa_conclusao DESC;

#8
USE EduPlus;
SELECT alunos.*, COUNT(cursoAlunos.matricula) AS total_cursos
FROM alunos
INNER JOIN cursoAlunos ON alunos.matricula = cursoAlunos.matricula
GROUP BY cursoAlunos.matricula
HAVING COUNT(cursoAlunos.matricula) > 1;

#9
USE EduPlus;
SELECT 
    cursos.nome, 
    (cursos.qtdModulos * 3) AS 'Total de provas', 
    AVG(infoAlunos.nota1 + infoAlunos.nota2 + infoAlunos.nota3) / 3 AS media_notas
FROM cursos
INNER JOIN cursoModulos ON cursos.idCurso = cursoModulos.idCurso
INNER JOIN infoAlunos ON cursoModulos.idModulo = infoAlunos.idModulo
GROUP BY cursos.idCurso;

#10
USE EduPlus;
SELECT
    c.nome AS curso_nome,
    a.nome AS aluno_nome,
    AVG(ia.frequencia) AS frequencia_curso
FROM
    cursoAlunos ca
JOIN
    alunos a ON ca.matricula = a.matricula
JOIN
    cursos c ON ca.idCurso = c.idCurso
JOIN
    cursoModulos cm ON c.idCurso = cm.idCurso
JOIN
    modulo m ON cm.idModulo = m.idModulo
JOIN
    infoAlunos ia ON ca.matricula = ia.matricula AND ia.idModulo = m.idModulo
GROUP BY
    c.nome, a.nome
HAVING
    AVG(ia.frequencia) >= 90
ORDER BY
    curso_nome, aluno_nome;
    
#11
USE EduPlus;
SELECT cursos.nome AS 'Nome do curso', instrutor.nome AS 'Instrutor responsável'
FROM cursos INNER JOIN instrutor ON instrutor.matricula = cursos.instrutorResponsavel;


#12
USE EduPlus;
SELECT alunos.nome, cursos.nome FROM alunos
INNER JOIN cursoAlunos ON alunos.matricula =  cursoAlunos.matricula
INNER JOIN cursos ON cursos.idCurso = cursoAlunos.idCurso
ORDER BY alunos.matricula;


