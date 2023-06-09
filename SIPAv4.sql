SET DATESTYLE TO POSTGRES, DMY ;
--O QUÊ FAZER
--Arrumar dados de datas, popular mais dados, acrescentar selects contendo joins.

--ALUNO
DROP TABLE IF EXISTS Aluno CASCADE;
CREATE TABLE IF NOT EXISTS Aluno (
            Id_aluno SERIAL PRIMARY KEY UNIQUE NOT NULL,
            Nome_alu VARCHAR(75) not null,
	        GENERO CHAR(1) not null CHECK (GENERO IN ('M', 'F')),
	        CPF_alu CHAR(16) unique not null,
	        Nome_rua VARCHAR(100) not null,
	        Num_end SMALLINT not null,
	        Email_alu VARCHAR(50) unique not null,
	        CEP_alu CHAR(11) not null,
	        UF CHAR(4) not null,
	        Num_cel BIGINT not null,
	        Data_nasc DATE not null,
	        Profissao VARCHAR(30),
	        Bairro VARCHAR(50),
	        Cidade VARCHAR(15)
);
SELECT * FROM Aluno;


------------------
-- Populando Aluno

INSERT INTO Aluno (Nome_alu, GENERO, CPF_alu, Nome_rua, Num_end, Email_alu, CEP_alu, UF, Num_cel, Data_nasc, Profissao, Bairro, Cidade)
VALUES ('João da Silva', 'M', '527.261.588-38', 'Rua da Juta', 63, 'joap@gmail.com', '03010-010', 'SP', 987654321, '1990-01-01', 'Comerciante', 'Brás', 'São Paulo'),
('Pedro Gomes', 'M', '798.177.650-32', 'Avenida Graciela Flores de Piteri', 580, 'pedro@hotmail.com', '06236-215', 'SP', 987654221, '1991-12-05', 'Diretor', 'Aliança', 'Osasco'),
('João da Silva', 'M', '241.964.916-85', 'Praça Bacharel Fernando Braga Pereira da Rocha', 43, 'joao@gmail.com', '04417-090', 'SP', 910654321, '1990-01-01', 'Psicólogo', 'Jardim Miriam', 'São Paulo'),
('Maria Souza', 'F', '686.917.583-76', 'Estrada da Lama Preta', 321, 'maria@gmail.com', '23577-900', 'RJ', 123456789, '1995-05-15', 'Diretora', 'Santa Cruz', 'Rio de Janeiro'),
('Carlos Oliveira', 'M', '813.749.762-53', 'Beco da Amizade', 21, 'carlos@gmail.com', '31985-332', 'MG', 987154321, '1988-12-10', 'Pedagogo', 'Dom Silvério', 'Belo Horizonte'),
('Ana Costa', 'F', '916.257.287-35', 'Rua Tapajós', 40, 'ana@hotmail.com', '87209-074', 'PR', 654321987, '1992-07-25', 'Psicóloga', 'Zona 03', 'Cianorte'),
('Paulo Santos', 'M', '676.433.639-35', 'Rua Doutor Deoclécio Pereira', 7, 'paulo@outlook.com', '91040-470', 'RS', 321987654, '1998-03-18', 'Psicólogo', 'Jardim Floresta', 'Porto Alegre'),
('Laura Mendes', 'F', '673.668.533-80', 'Rua Brasil Toschi', 2912, 'laura@gmail.com', '18706-490', 'SP', 987654321, '1993-09-20', 'Diretora', 'Alto da Colina II', 'Avaré'),
('Ricardo Lima', 'M', '287.081.411-93', 'Largo Cambuci', 742, 'ricardinho@hotmail.com', '01523-010', 'SP', 123456789, '1987-06-12', 'Pedagogo', 'Cambuci', 'São Paulo'),
('Fernanda Oliveira', 'F', '691.425.633-05', 'Rua Síria', 89, 'fernanda@outlook.com', '30150-020', 'MG', 987690321, '1991-04-05', 'Professora', 'Floresta', 'Belo Horizonte'),
('Lucas Santos', 'M', '259.719.411-60', 'Rua Rodolpho Senff Júnior', 12, 'lucas@gmail.com', '81110-130', 'PR', 654321987, '1997-02-28', 'Psicólogo', 'Capão Raso', 'Curitiba'),
('Juliana Silva', 'F', '386.218.721-70', 'Praça Província de São Pedro', 193, 'juliana@gmail.com', '91260-105', 'RS', 321987654, '1994-11-15', 'Psicóloga', 'Protásio Alves', 'Porto Alegre'),
('Carolina Fernandes', 'F', '667.762.344-00', 'Rua Felipe Camarão', 969, 'carolina@yahoo.com', '27521-330', 'RJ', 123456789, '1992-07-25', 'Psicóloga', 'Liberdade', 'Resende'),
('Gabriel Almeida', 'M', '835.497.616-51', 'Rua Tupaciguara', 18, 'gabriel@hotmail.com', '30330-310', 'MG', 987654021, '1996-05-03', 'Advogado', 'São Pedro', 'Belo Horizonte'),
('Camila Rodrigues', 'F', '862.238.218-40', 'Rua Júlio Pasa', 923, 'camila@gmail.com', '81570-510', 'PR', 654321987, '1993-03-22', NULL, 'Uberaba', 'Curitiba'),
('Marcelo Pereira', 'M', '164.433.466-61', 'Beco Nove', 150, 'marcelo@gmail.com', '90843-410', 'RS', 321987654, '1998-01-12', NULL, 'Nonoai', 'Porto Alegre'),
('Isabela Costa', 'F', '248.282.389-72', 'Rua Conde Deu', 523, 'isabela@outlook.com', '04741-901', 'SP', 987654321, '1991-09-08', 'Professora', 'Santo Amaro', 'São Paulo'),
('Rafaela Santos', 'F', '580.248.211-76', 'Avenida Murtas', 51, 'rafaela@gmail.com', '24913-465', 'RJ', 123456789, '1995-06-18', NULL, 'Itapeba', 'Maricá'),
('Gustavo Oliveira', 'M', '166.642.218-53', 'Rua Luzia Maia de Azevedo', 77, 'gustavo@gmail.com', '04877-160', 'SP', 987654321, '1990-03-30', 'Professor', 'Cidade Luz', 'São Paulo'),
('Carla Silva', 'F', '562.321.774-52', 'Rua Coronel João Cândido Muricy', 190, 'carla@gmail.com', '82130-040', 'PR', 654321987, '1994-02-12', 'Professora', 'Abranches', 'Curitiba'),
('Vitor Rodrigues', 'M', '227.759.488-12', 'Avenida Moreira Guimarães', 4, 'vitor@gmail.com', '04074-030', 'SP', 321987654, '1999-11-25', 'Professor', 'Indianópolis', 'São Paulo'),
('Leticia Santos', 'F', '179.889.502-15', 'Avenida José Pinheiro Borges', 2120, 'leticia@gmail.com', '08420-092', 'SP', 987610321, '1992-08-15', NULL, 'Jardim Helena', 'São Paulo'),
('Rodrigo Lima', 'M', '610.578.372-88', 'Rua Clarindo Bispo de Oliveira', 84, 'rodrigo@gmail.com', '30666-110', 'MG', 987254321, '1996-05-03', 'Advogado', 'Conjunto Habitacional Vale do Jatobá (Barreiro)', 'Belo Horizonte'),
('Mariana Fernandes', 'F', '822.116.735-54', 'Rua Anfilófio de Carvalho', 92, 'mariana@hotmail.com', '20030-060', 'RJ', 123456789, '1993-03-22', NULL, 'Centro', 'Rio de Janeiro'),
('Rafael Santos', 'M', '674.087.358-52', 'Rua Ivo Stengler', 78, 'rafael@gmail.com', '85813-760', 'PR', 654321987, '1998-01-12', 'Coordenador', 'Canadá', 'Cascavel'),
('Vanessa Pereira', 'F', '478.515.898-00', 'Rua Demóstenes', 81, 'vanea@gmail.com', '04614-013', 'SP', 321987654, '1995-09-28', 'Pedagoga', 'Campo Belo', 'São Paulo');
--ARRUMAR TELEFONES (ENCONTRAR GERADOR DE NUM) E ACRESCENTAR MAIS DADOS (LEMBRANDO DE USAR OS GERADORES DE CPF E CEP)
SELECT * from Aluno;
--                                                                                                                                                                                                                  - ALUNO
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- MATRICULA
DROP TABLE IF EXISTS Matricula CASCADE;
CREATE TABLE Matricula (
	Id_alu serial not null,
	Cod_curso CHAR (5) not null,
	Num_matri serial primary key unique,
	Id_monitor smallint not null,
	Situ_matri char(7) not null check(Situ_matri IN ('ATIVA', 'INATIVA')),
	Data_matri DATE not null,
	
	FOREIGN KEY (Id_alu) REFERENCES Aluno (Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Cod_curso) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Id_monitor) REFERENCES Monitor (Id_monitor) ON UPDATE CASCADE ON DELETE CASCADE);

---------------------
--Populando matricula

INSERT INTO matricula (Cod_curso, Id_monitor, Situ_matri, Data_matri) 
VALUES 
	('AB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('GB', 1, 'ATIVA', '22-11-2022'),
	('JMB', 1, 'ATIVA', '22-11-2022'),
	('GB', 1, 'ATIVA', '22-11-2022'),
	('AB', 2, 'ATIVA', '22-11-2022'),
	('JMB', 2, 'INATIVA', '22-11-2022'),
	('JMB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('GB', 2, 'ATIVA', '22-11-2022'),
	('MB', 1, 'ATIVA', '22-11-2022'),
	('JMB', 1, 'ATIVA', '22-11-2022'),
	('GB', 1, 'ATIVA', '22-11-2022'),
	('MB', 1, 'ATIVA', '22-11-2022'),
	('GB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('GB', 1, 'INATIVA', '22-11-2022'),
	('AB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('GB', 1, 'ATIVA', '22-11-2022'),
	('JMB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('MB', 2, 'ATIVA', '22-11-2022'),
	('AB', 1, 'ATIVA', '22-11-2022'),
	('AB', 2, 'INATIVA', '22-11-2022'),
	('MB', 2, 'INATIVA', '22-11-2022')
;

SELECT * FROM Matricula;
--                                                                                                                                                                                                                   - MATRICULA
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CURSO

DROP TABLE IF EXISTS Curso CASCADE;
CREATE TABLE Curso (
	Cod_curso CHAR (5) primary key unique,
	Nome_curso VARCHAR(100) unique not null,
	Carg_horaria VARCHAR(10) not null
);
SELECT * FROM Curso;

------------------
-- populando Curso
INSERT INTO Curso (Cod_curso, Nome_curso, Carg_horaria) 
VALUES ('AB','Agentes do Brincar', '170 horas'),
	('JMB','Jovem Mediadores do brincar', '90 horas'),
	('GB', 'Guardiões do brincar', '50 horas'),
	('MB','Mediadores do brincar inclusivo','30 horas');
SELECT * FROM Curso;

--                                                                                                                                                                                                                   - CURSO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- OFICINA

DROP TABLE IF EXISTS oficina CASCADE;
create table oficina (
	id_ofic serial primary key not null ,
	nome_ofic char(20) not null ,
	data_ofic date not null,
	carga_hor int not null ,
	descricao varchar(80) not null,
	hora_inicio time not null,
	hora_termino time not null,
	Cod_curso CHAR (5) not null,
	FOREIGN KEY (Cod_curso) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE	
) ;
select * from oficina;

--------------------
-- Populando Oficina
INSERT INTO oficina (nome_ofic, data_ofic, carga_hor, descricao, hora_inicio, hora_termino, Cod_curso)
VALUES ('Aula 1', '2023-06-01', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '09:00:00', '17:00:00','AB'),
	('Aula 2', '2023-06-02', 4, 'Brincar para construção de uma cultura de paz: habilidades ', '10:00:00', '16:00:00','AB'),
	('Aula 3', '2023-06-03', 4, 'Gerenciando riscos no brincar', '13:00:00', '17:00:00','AB'),
	('Aula 4', '2023-06-04', 4, 'Brincadeiras para todas as faixas', '14:00:00', '19:00:00','AB'),
	('Aula 5', '2023-06-05', 4, 'Inclusão de crianças com deficiência pelo brincar', '11:00:00', '18:00:00','AB'),
	('Aula 6', '2023-06-06', 4, 'Brincar e o imaginário infantil: contação de histórias', '13:00:00', '17:00:00','AB'),
	('Aula 7', '2023-06-07', 4, 'Brincar e dançar: a arte em movimento', '10:00:00', '13:00:00','AB'),
	('Aula 8', '2023-06-08', 4, 'Brincar para construção de uma cultura de paz: habilidades ', '13:00:00', '19:00:00','AB'),
	('Aula 9', '2023-06-09', 4, 'Gerenciando riscos no brincar', '10:00:00', '14:00:00','AB'),
	('Aula 10', '2023-06-10', 4, 'Inclusão de crianças com deficiência pelo brincar', '09:00:00', '17:00:00','AB'),
	('Aula 11', '2023-06-11', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '11:00:00', '16:00:00','AB'),
	('Aula 12', '2023-06-12', 4,'Gerenciando riscos no brincar', '09:00:00', '17:00:00','AB'),
	('Aula 13', '2023-06-13', 4,'Inclusão de crianças com deficiência pelo brincar', '10:00:00', '16:00:00','AB'),
	('Aula 14', '2023-06-14', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '13:00:00', '17:00:00','AB');	
select * from oficina;

--                                                                                                                                                                                                                   - OFICINA
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--MONITOR
DROP TABLE IF EXISTS Monitor CASCADE;
CREATE TABLE Monitor (
	Id_monitor serial primary key unique,
	Nome_moni VARCHAR(60) not null,
	CPF_moni VARCHAR(14) not null,
	Data_nasc DATE not null,
	Email_moni VARCHAR(50) not null,
	CEP_moni CHAR(9) not null,
	Nome_rua VARCHAR(70) not null,
	Num_end SMALLINT not null
);
SELECT * FROM Monitor;

--------------------
-- populando monitor
INSERT INTO Monitor (Nome_moni, CPF_moni, Data_nasc, Email_moni, CEP_moni, Nome_rua, Num_end) VALUES 
('Anderson', '428.376.386-02', '13-11-1995', 'anderson@gmail.com', '01509-001', 'Rua safira', 104),
('Aline', '574.265.894-09', '08-10-2000', 'aline@gmail.com', '01539221', 'Rua Barros Costa', 155);
SELECT * from Monitor;

--                                                                                                                                                                                                                   - MONITOR
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ATIVIDADES
drop table if exists Atividade cascade;
create table Atividade (
	Cod_curso CHAR (5) not null,
	num_atv integer not null primary key,
	Id_aluno int not null,
	nome_atv varchar(20) not null,
	entrega boolean not null,
	nota_atv smallint not null,
	Id_monitor smallint not null ,
	
	
foreign key (Id_monitor) references Monitor(Id_monitor)
on delete cascade on update cascade	,
foreign key (Id_aluno) references Aluno(Id_aluno)
on delete cascade on update cascade	,
foreign key (Cod_curso) references Curso(Cod_curso)
on delete cascade on update cascade ) ;

select * from Atividade;

------------------------
-- populando atividades

INSERT INTO Atividade (Cod_curso, num_atv, Id_aluno, nome_atv, entrega, nota_atv, Id_monitor)
VALUES 
    ('AB', 651, 1, 'Atividade 1', true, 80, 1),
    ('AB', 652, 2, 'Atividade 2', true, 75, 2),
    ('JMB', 653, 3, 'Atividade 3', false, 0, 1),
    ('AB', 654, 4, 'Atividade 1', true, 90, 2),
    ('JMB', 655, 5, 'Atividade 2', true, 85, 1),
    ('MB', 656, 6, 'Atividade 3', true, 95, 2),
    ('GB', 657, 7, 'Atividade 1', true, 70, 1),
    ('GB', 658, 8, 'Atividade 2', false, 0, 2),
    ('GB', 659, 9, 'Atividade 3', true, 88, 1),
    ('GB', 660, 10, 'Atividade 1', true, 92, 2),
    ('JMB', 611, 11, 'Atividade 2', true, 87, 1),
    ('JMB', 612, 12, 'Atividade 3', true, 82, 2);

select * from Atividade;
select * from Aluno;
select * from Monitor;
select * from Matricula;
select * from Curso;
select * from Oficina;

--                                                                                                                                                                                                                   - ATIVIDADES
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Tabela Frequência

Drop table if exists Frequencia cascade;
Create table Frequencia (
	Id_ofic smallint not null,
	Id_alu smallint not null,
	Id_monitor smallint not null,
	Cod_curso CHAR (5) not null,
	Situac_presenca boolean,
	FOREIGN KEY (Id_ofic) REFERENCES Oficina(Id_ofic) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Id_alu) REFERENCES Aluno(Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Id_monitor) REFERENCES Monitor(Id_monitor) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Cod_curso) REFERENCES Curso(Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE)
;
	

------------------------------	
-- Populando tabela frequência
Insert into Frequencia (Id_ofic, Id_alu, Id_monitor, Cod_Curso, Situac_presenca) 
values (1, 1, 1, 'AB', 'True'), 
(1, 2, 2, 'AB', 'True'),
(1, 6, 1, 'AB', 'True'),
(1, 9, 2, 'AB', 'False'),
(1, 16, 2, 'AB', 'True'),
(1, 18, 1, 'AB', 'True'),
(1, 19, 2, 'AB', 'True'),
(1, 22, 2, 'AB', 'True'), 
(1, 24, 1, 'AB', 'False'),
(1, 25, 1, 'AB', 'True'),
(2, 1, 1, 'AB', 'False'), 
(2, 2, 1, 'AB', 'False'),
(2, 6, 1, 'AB', 'True'),
(2, 9, 2, 'AB', 'True'),
(2, 16, 2, 'AB', 'True'),
(2, 18, 1, 'AB', 'True'),
(2, 19, 2, 'AB', 'True'), 
(2, 22, 2, 'AB', 'True'), 
(2, 24, 1, 'AB', 'False'),
(2, 25, 1, 'AB', 'True'),
(3, 1, 1, 'AB', 'True'), 
(3, 2, 1, 'AB', 'True'),
(3, 6, 1, 'AB', 'True'),
(3, 9, 1, 'AB', 'True'),
(3, 16, 2, 'AB', 'True'),
(3, 18, 1, 'AB', 'True'),
(3, 19, 1, 'AB', 'True'),
(3, 22, 1, 'AB', 'True'), 
(3, 24, 1, 'AB', 'False'),
(3, 25, 2, 'AB', 'True'),
(4, 1, 1, 'AB', 'True'), 
(4, 2, 1, 'AB', 'True'),
(4, 6, 1, 'AB', 'True'),
(4, 9, 2, 'AB', 'False'),
(4, 16, 2, 'AB', 'False'),
(4, 18, 2, 'AB', 'True'),
(4, 19, 2, 'AB', 'False'), 
(4, 22, 2, 'AB', 'True'), 
(4, 24, 1, 'AB', 'False'),
(4, 25, 2, 'AB', 'True'),
(5, 1, 1, 'AB', 'True'), 
(5, 2, 2, 'AB', 'False'),
(5, 6, 1, 'AB', 'True'),
(5, 9, 2, 'AB', 'False'),
(5, 16, 2, 'AB', 'False'),
(5, 18, 1, 'AB', 'True'),
(5, 19, 2, 'AB', 'False'), 
(5, 22, 1, 'AB', 'True'),
(5, 24, 1, 'AB', 'False'),
(5, 25, 1, 'AB', 'True'),
(6, 1, 1, 'AB', 'True'), 
(6, 2, 1, 'AB', 'True'),
(6, 6, 1, 'AB', 'True'),
(6, 9, 2, 'AB', 'True'),
(6, 16, 2, 'AB', 'True'),
(6, 18, 1, 'AB', 'True'),
(6, 19, 1, 'AB', 'True'), 
(6, 22, 1, 'AB', 'True'), 
(6, 24, 1, 'AB', 'True'),
(6, 25, 1, 'AB', 'True'),
(7, 1, 1, 'AB', 'False'), 
(7, 2, 1, 'AB', 'True'),
(7, 6, 1, 'AB', 'False'),
(7, 9, 2, 'AB', 'True'),
(7, 16, 2, 'AB', 'True'),
(7, 18, 1, 'AB', 'False'),
(7, 19, 2, 'AB', 'True'),
(7, 22, 1, 'AB', 'True'), 
(7, 24, 1, 'AB', 'True'),
(7, 25, 1, 'AB', 'False'),
(8, 1, 1, 'AB', 'True'), 
(8, 2, 1, 'AB', 'True'),
(8, 6, 1, 'AB', 'True'),
(8, 9, 2, 'AB', 'True'),
(8, 16, 2, 'AB', 'True'),
(8, 18, 1, 'AB', 'True'),
(8, 19, 2, 'AB', 'True'), 
(8, 22, 2, 'AB', 'True'), 
(8, 24, 1, 'AB', 'False'),
(8, 25, 1, 'AB', 'True'),
(9, 1, 1, 'AB', 'False'), 
(9, 2, 1, 'AB', 'True'),
(9, 6, 1, 'AB', 'True'),
(9, 9, 2, 'AB', 'False'),
(9, 16, 2, 'AB', 'True'),
(9, 18, 1, 'AB', 'True'),
(9, 19, 2, 'AB', 'True'),
(9, 22, 2, 'AB', 'True'),
(9, 24, 1, 'AB', 'False'),
(9, 25, 1, 'AB', 'True'),
(10, 1, 1, 'AB', 'True'), 
(10, 2, 1, 'AB', 'True'),
(10, 6, 1, 'AB', 'True'),
(10, 9, 2, 'AB', 'True'),
(10, 16, 1, 'AB', 'True'),
(10, 18, 1, 'AB', 'True'),
(10, 19, 1, 'AB', 'True'), 
(10, 22, 1, 'AB', 'True'), 
(10, 24, 1, 'AB', 'True'),
(10, 25, 2, 'AB', 'True'),
(11, 1, 1, 'AB', 'True'), 
(11, 2, 1, 'AB', 'True'),
(11, 6, 1, 'AB', 'True'),
(11, 9, 2, 'AB', 'False'),
(11, 16, 2, 'AB', 'True'),
(11, 18, 1, 'AB', 'False'),
(11, 19, 2, 'AB', 'True'),
(11, 22, 2, 'AB', 'True'), 
(11, 24, 1, 'AB', 'True'),
(11, 25, 1, 'AB', 'True'),
(12, 1, 1, 'AB', 'True'), 
(12, 2, 1, 'AB', 'True'),
(12, 6, 1, 'AB', 'True'),
(12, 9, 2, 'AB', 'True'),
(12, 16, 2, 'AB', 'True'),
(12, 18, 1, 'AB', 'True'),
(12, 19, 2, 'AB', 'True'), 
(12, 22, 2, 'AB', 'True'), 
(12, 24, 1, 'AB', 'False'),
(12, 25, 1, 'AB', 'True'),
(13, 1, 1, 'AB', 'True'), 
(13, 2, 1, 'AB', 'True'),
(13, 6, 1, 'AB', 'True'),
(13, 9, 2, 'AB', 'True'),
(13, 16, 2, 'AB', 'False'),
(13, 18, 1, 'AB', 'True'),
(13, 19, 2, 'AB', 'True'), 
(13, 22, 2, 'AB', 'False'), 
(13, 24, 1, 'AB', 'False'),
(13, 25, 1, 'AB', 'False'),
(14, 1, 1, 'AB', 'True'), 
(14, 2, 1, 'AB', 'True'),
(14, 6, 1, 'AB', 'True'),
(14, 9, 2, 'AB', 'True'),
(14, 16, 1, 'AB', 'False'),
(14, 18, 1, 'AB', 'True'),
(14, 19, 1, 'AB', 'True'), 
(14, 22, 1, 'AB', 'True'), 
(14, 24, 1, 'AB', 'False'),
(14, 25, 1, 'AB', 'False');

--                                                                                                                                                                                                                   - FREQUENCIA
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


