use clinica2;
/*a. Ambulat�rios: nAmb (integer), andar (integer) (n�o nulo), capacidade (integer)*/

CREATE TABLE ambulatorios(
nAmb INT IDENTITY(1,1) PRIMARY KEY,
andar INT NOT NULL,
capacidade INT NOT NULL);

/*b. M�dicos: codM (integer), nome (char(40)) (n�o nulo), 
idade (smallint) (n�o nulo), especialidade (char(20)), 
CPF (integer)) (�nico), cidade (char(30)), nAmb (integer)*/

CREATE TABLE medicos(
codM INT IDENTITY(1,1) PRIMARY KEY,
nome CHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
especialidade CHAR(20),
NIF NUMERIC NOT NULL,
cidade CHAR(30),
nAmb INT,
CONSTRAINT UK_medicos UNIQUE (NIF));

/*criar FOREIGN KEY FK_AmbulatoriosMedicos*/
ALTER TABLE medicos
ADD CONSTRAINT FK_AmbulatoriosMedicos
FOREIGN KEY (nAmb) REFERENCES ambulatorios(nAmb);

/*c. Pacientes: codP (integer), nome (char(40)) (n�o nulo), 
idade (integer) (n�o nulo), cidade (char(30)), 
NIF (integer) (�nico), doenca (char(40)) (n�o nulo)*/

CREATE TABLE pacientes(
codP INT IDENTITY(1,1) PRIMARY KEY,
nome CHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
cidade CHAR(30),
NIF NUMERIC NOT NULL,
doenca CHAR(40) NOT NULL,
CONSTRAINT UK_pacientes UNIQUE (NIF))

/*d. Funcion�rios: codF (integer), 
nome (char(40)) (n�o nulo), idade (smallint), 
cidade (char(30)), CPF (numeric(10) (�nico), 
sal�rio (integer), cargo (char(20))*/

CREATE TABLE funcionarios(
codF INT IDENTITY(1,1) PRIMARY KEY,
nome CHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
cidade CHAR(30),
NIF NUMERIC NOT NULL,
salario MONEY,
cargo CHAR(20),
CONSTRAINT UK_funcionarios UNIQUE (NIF))

/*e. Consultas: codM (integer), codP (integer), data (date), hora (time)*/

CREATE TABLE consultas(
codM INT,
codP INT,
data DATE NOT NULL,
hora TIME NOT NULL)

/*criar FOREIGN KEY FK_MedicosConsultas*/

ALTER TABLE consultas
ADD CONSTRAINT FK_MedicosConsultas
FOREIGN KEY (codM) REFERENCES medicos(codM);

/*criar FOREIGN KEY FK_PacientesConsultas*/

ALTER TABLE consultas
ADD CONSTRAINT FK_PacientesConsultas
FOREIGN KEY (codP) REFERENCES pacientes(codP);

/*Crie a coluna nAmb (integer) na tabela Funcion�rios*/

ALTER TABLE funcionarios
ADD nAmb INT;

/*criar FOREIGN KEY FK_AmbulatoriosFuncionarios*/

ALTER TABLE funcionarios
ADD CONSTRAINT FK_AmbulatoriosFuncionarios
FOREIGN KEY (nAmb) REFERENCES ambulatorios(nAmb);

/*Remova a coluna cargo da tabela Funcion�rios*/

ALTER TABLE funcionarios
DROP COLUMN cargo;

/*Introduza os seguintes registos
a. Ambulat�rios: (1, 1, 30)(2, 1, 50)*/

INSERT INTO ambulatorios VALUES (1, 30),(1, 50)

/*a.1 confirmar dados inseridos*/
SELECT * FROM ambulatorios

/*b. M�dicos: (1, Jo�o, 40, Ortopedia, 1000010000, Lisboa, 1)
(2, Maria, 42, Traumatologia, 1000011000, Set�bal, 2)*/

INSERT INTO medicos 
VALUES ('Jo�o', 40, 'Ortopedia', 1000010000, 'Lisboa', 1),
('Maria', 42, 'Traumatologia', 1000011000, 'Set�bal', 2)

/*b.1 confirmar dados inseridos*/
SELECT * FROM medicos

/*c. Pacientes: (1, C�lia, 9, Lisboa, 20000200000, Anemia)
(2, Paulo, 24, Lisboa, 20000220000, Fratura)*/

INSERT INTO pacientes 
VALUES ('C�lia', 9, 'Lisboa', 20000200000, 'Anemia'),
('Paulo', 24, 'Lisboa', 20000220000, 'Fratura')

/*c.1 confirmar dados inseridos*/
SELECT * FROM pacientes

/*d. Funcion�rios: (1, Maria, 32, Lisboa, 2000010000, 1200, 1)
(2, Paula, 55, Lisboa, 3000011000, 1200, 2)*/

INSERT INTO funcionarios
VALUES ('Maria', 32, 'Lisboa', 20000100000, 1200, 1),
('Paula', 55, 'Lisboa', 30000110000, 1200, 2)

/*d.1 confirmar dados inseridos*/
SELECT * FROM funcionarios

/*e. Consultas: (1, 1, 2010/06/14, 19:30)(1, 2, 2010/06/15, 10:00)*/

INSERT INTO consultas
VALUES (1, 1, '2010/06/14', '19:30'),
(1, 2, '2010/06/15', '10:00')

/*e.1 confirmar dados inseridos*/
SELECT * FROM consultas

/*6-- Realize as seguintes atualiza��es na base de dados*/

/* a. O paciente Paulo, n� 2, mudou a sua resid�ncia para a cidade do Porto*/

UPDATE pacientes SET cidade='Porto' WHERE codP=2

/*a.1 confirmar dados inseridos*/
SELECT * FROM pacientes

/*b. A consulta do m�dico 1 com o paciente 2 
passou para as 12:00 horas, no dia 15 de Junho de 2010.*/

UPDATE consultas SET hora='12:00' WHERE codM=1 AND codP=2

/*b.1 confirmar dados inseridos*/
SELECT * FROM consultas

/*c. A doen�a da paciente C�lia agora � anemia.*/

UPDATE pacientes SET doenca='anemia' WHERE codP=1

/*c.1 confirmar dados inseridos*/
SELECT * FROM pacientes

/*d. A funcion�ria Maria, com o c�digo n� 1, deixou a cl�nica*/

DELETE funcionarios WHERE codF=1

/*d.1 confirmar dados inseridos*/
SELECT * FROM funcionarios

/*e. As consultas marcadas ap�s as 19 horas foram canceladas*/

DELETE consultas WHERE hora>'19:00'

/*e.1 confirmar dados inseridos*/
SELECT * FROM consultas

/*f. Os pacientes com anemia ou idade inferior a 10 anos deixaram a cl�nica.*/

DELETE pacientes WHERE idade<10

/*f.1 confirmar dados inseridos*/
SELECT * FROM pacientes

/*g. Os m�dicos que residem em Set�bal deixaram a cl�nica.*/

DELETE medicos WHERE cidade='Set�bal'

/*g.1 confirmar dados inseridos*/
SELECT * FROM medicos







