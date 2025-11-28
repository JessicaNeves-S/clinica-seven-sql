INSERT INTO ESPECIALIDADE (nome_especialidade, descricao) VALUES
('Cardiologia', 'Tratamento de doenças do coração'),
('Pediatria', 'Especialidade médica infantil'),
('Dermatologia', 'Doenças da pele');

INSERT INTO MEDICO (nome, crm, telefone, email, id_especialidade) VALUES
('Dr. João Silva', 'CRM12345', '(11) 98765-4321', 'joao@clinica.com', 1),
('Dra. Ana Ribeiro', 'CRM54321', '(11) 96543-2100', 'ana@clinica.com', 2),
('Dr. Marcos Oliveira', 'CRM99887', '(21) 91234-5678', 'marcos@clinica.com', 3);

INSERT INTO PACIENTE (nome, data_nascimento, cpf, telefone, email) VALUES
('Maria Santos', '1985-06-12', '12345678900', '(11) 99911-2233', 'maria@email.com'),
('Carlos Lima', '1992-03-25', '98765432100', '(11) 98822-3344', 'carlos@email.com');

INSERT INTO ENDERECO_PACIENTE (id_paciente, rua, numero, bairro, cidade, estado, cep) VALUES
(1, 'Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', '01311000'),
(2, 'Rua das Flores', '200', 'Centro', 'São Paulo', 'SP', '01001000');

INSERT INTO HORARIO_MEDICO (id_medico, hora_inicio, hora_fim, dia_semana) VALUES
(1, '08:00:00', '12:00:00', 'Segunda'),
(1, '13:00:00', '17:00:00', 'Quarta'),
(2, '09:00:00', '14:00:00', 'Terça'),
(3, '08:00:00', '15:00:00', 'Sexta');

INSERT INTO CONSULTA (id_paciente, id_medico, data_consulta, hora_consulta, status) VALUES
(1, 1, '2025-01-10', '09:00:00', 'Agendada'),
(2, 2, '2025-01-11', '10:30:00', 'Realizada'),
(1, 3, '2025-01-12', '14:00:00', 'Cancelada');

INSERT INTO CANCELAMENTO_CONSULTA (id_consulta, data_cancelamento, motivo) VALUES
(3, '2025-01-09 18:30:00', 'Paciente passou mal e não poderá comparecer');

INSERT INTO ATENDIMENTO (id_consulta, observacoes, prescricao) VALUES
(2, 'Paciente com sintomas leves.', 'Dipirona 500mg a cada 8 horas');

INSERT INTO USUARIO_SISTEMA (nome_usuario, senha, cargo) VALUES
('admin', '123456', 'Administrador'),
('recepcao1', 'senha123', 'Recepção');
