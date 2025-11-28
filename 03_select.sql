SELECT * FROM PACIENTE;

SELECT c.id_consulta, p.nome AS paciente, m.nome AS medico, c.data_consulta, c.status
FROM CONSULTA c
JOIN PACIENTE p ON c.id_paciente = p.id_paciente
JOIN MEDICO m ON c.id_medico = m.id_medico;

SELECT m.nome, COUNT(c.id_consulta) AS total_consultas
FROM CONSULTA c
JOIN MEDICO m ON c.id_medico = m.id_medico
GROUP BY m.nome
ORDER BY total_consultas DESC;
