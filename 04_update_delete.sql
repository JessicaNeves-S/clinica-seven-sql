UPDATE CONSULTA
SET status = 'Realizada'
WHERE id_consulta = 1;

UPDATE PACIENTE
SET telefone = '(11) 95555-4444'
WHERE id_paciente = 1;

UPDATE CONSULTA
SET id_medico = 3
WHERE id_consulta = 2;


DELETE FROM CANCELAMENTO_CONSULTA
WHERE id_cancelamento = 1;

DELETE FROM HORARIO_MEDICO
WHERE id_horario = 1;

DELETE FROM USUARIO_SISTEMA
WHERE id_usuario = 2;
