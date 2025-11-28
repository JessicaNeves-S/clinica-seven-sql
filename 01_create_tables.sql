CREATE TABLE PACIENTE (
  id_paciente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  data_nascimento DATE,
  cpf VARCHAR(15),
  telefone VARCHAR(20),
  email VARCHAR(100)
);

CREATE TABLE ENDERECO_PACIENTE (
  id_endereco INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT,
  rua VARCHAR(100),
  numero VARCHAR(10),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  estado VARCHAR(2),
  cep VARCHAR(10),
  FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id_paciente)
);

CREATE TABLE ESPECIALIDADE (
  id_especialidade INT PRIMARY KEY AUTO_INCREMENT,
  nome_especialidade VARCHAR(100),
  descricao TEXT
);

CREATE TABLE MEDICO (
  id_medico INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  crm VARCHAR(20),
  telefone VARCHAR(20),
  email VARCHAR(100),
  id_especialidade INT,
  FOREIGN KEY (id_especialidade) REFERENCES ESPECIALIDADE(id_especialidade)
);

CREATE TABLE HORARIO_MEDICO (
  id_horario INT PRIMARY KEY AUTO_INCREMENT,
  id_medico INT,
  hora_inicio TIME,
  hora_fim TIME,
  dia_semana VARCHAR(20),
  FOREIGN KEY (id_medico) REFERENCES MEDICO(id_medico)
);

CREATE TABLE CONSULTA (
  id_consulta INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT,
  id_medico INT,
  data_consulta DATE,
  hora_consulta TIME,
  status VARCHAR(50),
  FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES MEDICO(id_medico)
);

CREATE TABLE CANCELAMENTO_CONSULTA (
  id_cancelamento INT PRIMARY KEY AUTO_INCREMENT,
  id_consulta INT,
  data_cancelamento DATETIME,
  motivo TEXT,
  FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id_consulta)
);

CREATE TABLE ATENDIMENTO (
  id_atendimento INT PRIMARY KEY AUTO_INCREMENT,
  id_consulta INT UNIQUE,
  observacoes TEXT,
  prescricao TEXT,
  FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id_consulta)
);

CREATE TABLE USUARIO_SISTEMA (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(50),
  senha VARCHAR(100),
  cargo VARCHAR(50)
);
