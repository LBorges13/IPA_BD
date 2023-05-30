SET DATESTYLE TO POSTGRES, DMY ;

--Aluno
DROP TABLE IF EXISTS Aluno CASCADE;
CREATE TABLE Aluno (
	Id_aluno serial Primary Key unique,
	Nome_alu VARCHAR(75) not null,
	Sexo_alu CHAR(1) not null CHECK (Sexo_alu IN ('M', 'F')),
	CPF_alu CHAR(14) unique not null,
	Nome_rua VARCHAR(100) not null,
	Num_end SMALLINT not null,
	Email_alu VARCHAR(50) unique not null,
	CEP_alu CHAR(9) not null,
	UF CHAR(2) not null,
	Num_cel INT not null,
	Data_nasc DATE not null,
	Profissao VARCHAR(30),
	Bairro VARCHAR(50),
	Cidade VARCHAR(15)
);
SELECT * FROM Aluno;

--Curso
DROP TABLE IF EXISTS Curso CASCADE;
CREATE TABLE Curso (
	Cod_curso int primary key unique,
	Nome_curso VARCHAR(100) unique not null,
	Carg_horaria VARCHAR(10) not null
);
SELECT * FROM Curso;

--Monitor
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

-- populando monitor
INSERT INTO Monitor (Nome_moni, CPF_moni, Data_nasc, Email_moni, CEP_moni, Nome_rua, Num_end) VALUES 
('Anderson', '428.376.386-02', '13-11-1995', 'anderson@gmail.com', '01509-001', 'Rua safira', 104),
('Aline', '574.265.894-09', '08-10-2000', 'aline@gmail.com', '01539221', 'Rua Barros Costa', 155);
SELECT * from Monitor;



INSERT INTO Aluno (Nome_alu, Sexo_alu, CPF_alu, Nome_rua, Num_end, Email_alu, CEP_alu, UF, Num_cel, Data_nasc, Profissao, Bairro, Cidade)
VALUES ('João da Silva', 'M', '527.261.588-38', 'Rua da Juta', 63, 'joap@gmail.com', '03010-010', 'SP', 987654321, '1990-01-01', 'Comerciante', 'Brás', 'São Paulo'),
('Pedro Gomes', 'M', '798.177.650-32', 'Avenida Graciela Flores de Piteri', 580, 'pedro@hotmail.com', '06236-215', 'SP', 987654221, '1991-12-05', NULL, 'Aliança', 'Osasco'),
('João da Silva', 'M', '241.964.916-85', 'Praça Bacharel Fernando Braga Pereira da Rocha', 43, 'joao@gmail.com', '04417-090', 'SP', 910654321, '1990-01-01', NULL, 'Jardim Miriam', 'São Paulo'),
('Maria Souza', 'F', '686.917.583-76', 'Estrada da Lama Preta', 321, 'maria@gmail.com', '23577-900', 'RJ', 123456789, '1995-05-15', NULL, 'Santa Cruz', 'Rio de Janeiro'),
('Carlos Oliveira', 'M', '813.749.762-53', 'Beco da Amizade', 21, 'carlos@gmail.com', '31985-332', 'MG', 987154321, '1988-12-10', NULL, 'Dom Silvério', 'Belo Horizonte'),
('Ana Costa', 'F', '916.257.287-35', 'Rua Tapajós', 40, 'ana@hotmail.com', '87209-074', 'PR', 654321987, '1992-07-25', NULL, 'Zona 03', 'Cianorte'),
('Paulo Santos', 'M', '676.433.639-35', 'Rua Doutor Deoclécio Pereira', 7, 'paulo@outlook.com', '91040-470', 'RS', 321987654, '1998-03-18', NULL, 'Jardim Floresta', 'Porto Alegre'),
('Laura Mendes', 'F', '673.668.533-80', 'Rua Brasil Toschi', 2912, 'laura@gmail.com', '18706-490', 'SP', 987654321, '1993-09-20', NULL, 'Alto da Colina II', 'Avaré'),
('Ricardo Lima', 'M', '287.081.411-93', 'Largo Cambuci', 742, 'ricardinho@hotmail.com', '01523-010', 'SP', 123456789, '1987-06-12', NULL, 'Cambuci', 'São Paulo'),
('Fernanda Oliveira', 'F', '691.425.633-05', 'Rua Síria', 89, 'fernanda@outlook.com', '30150-020', 'MG', 987690321, '1991-04-05', 'Professora', 'Floresta', 'Belo Horizonte'),
('Lucas Santos', 'M', '259.719.411-60', 'Rua Rodolpho Senff Júnior', 12, 'lucas@gmail.com', '81110-130', 'PR', 654321987, '1997-02-28', NULL, 'Capão Raso', 'Curitiba'),
('Juliana Silva', 'F', '386.218.721-70', 'Praça Província de São Pedro', 193, 'juliana@gmail.com', '91260-105', 'RS', 321987654, '1994-11-15', NULL, 'Protásio Alves', 'Porto Alegre'),
('Carolina Fernandes', 'F', '667.762.344-00', 'Rua Felipe Camarão', 969, 'carolina@yahoo.com', '27521-330', 'RJ', 123456789, '1992-07-25', NULL, 'Liberdade', 'Resende'),
('Gabriel Almeida', 'M', '835.497.616-51', 'Rua Tupaciguara', 18, 'gabriel@hotmail.com', '30330-310', 'MG', 987654021, '1996-05-03', 'Advogado', 'São Pedro', 'Belo Horizonte'),
('Camila Rodrigues', 'F', '862.238.218-40', 'Rua Júlio Pasa', 923, 'camila@gmail.com', '81570-510', 'PR', 654321987, '1993-03-22', NULL, 'Uberaba', 'Curitiba'),
('Marcelo Pereira', 'M', '164.433.466-61', 'Beco Nove', 150, 'marcelo@gmail.com', '90843-410', 'RS', 321987654, '1998-01-12', NULL, 'Nonoai', 'Porto Alegre'),
('Isabela Costa', 'F', '248.282.389-72', 'Rua Conde Deu', 523, 'isabela@outlook.com', '04741-901', 'SP', 987654321, '1991-09-08', 'Professora', 'Santo Amaro', 'São Paulo'),
('Rafaela Santos', 'F', '580.248.211-76', 'Avenida Murtas', 51, 'rafaela@gmail.com', '24913-465', 'RJ', 123456789, '1995-06-18', NULL, 'Itapeba', 'Maricá'),
('Gustavo Oliveira', 'M', '166.642.218-53', 'Rua Luzia Maia de Azevedo', 77, 'gustavo@gmail.com', '04877-160', 'SP', 987654321, '1990-03-30', 'Professor', 'Cidade Luz', 'São Paulo'),
('Carla Silva', 'F', '562.321.774-52', 'Rua Coronel João Cândido Muricy', 190, 'carla@gmail.com', '82130-040', 'PR', 654321987, '1994-02-12', 'Professor', 'Abranches', 'Curitiba'),
('Vitor Rodrigues', 'M', '227.759.488-12', 'Avenida Moreira Guimarães', 4, 'vitor@gmail.com', '04074-030', 'SP', 321987654, '1999-11-25', 'Professor', 'Indianópolis', 'São Paulo'),
('Leticia Santos', 'F', '179.889.502-15', 'Avenida José Pinheiro Borges', 2120, 'leticia@gmail.com', '08420-092', 'SP', 987610321, '1992-08-15', NULL, 'Jardim Helena', 'São Paulo'),
('Rodrigo Lima', 'M', '610.578.372-88', 'Rua Clarindo Bispo de Oliveira', 84, 'rodrigo@gmail.com', '30666-110', 'MG', 987254321, '1996-05-03', 'Advogado', 'Conjunto Habitacional Vale do Jatobá (Barreiro)', 'Belo Horizonte'),
('Mariana Fernandes', 'F', '822.116.735-54', 'Rua Anfilófio de Carvalho', 92, 'mariana@hotmail.com', '20030-060', 'RJ', 123456789, '1993-03-22', NULL, 'Centro', 'Rio de Janeiro'),
('Rafael Santos', 'M', '674.087.358-52', 'Rua Ivo Stengler', 78, 'rafael@gmail.com', '85813-760', 'PR', 654321987, '1998-01-12', 'Coordenador', 'Canadá', 'Cascavel'),
('Vanessa Pereira', 'F', '478.515.898-00', 'Rua Demóstenes', 81, 'vanea@gmail.com', '04614-013', 'SP', 321987654, '1995-09-28', NULL, 'Campo Belo', 'São Paulo');
--ARRUMAR TELEFONES (ENCONTRAR GERADOR DE NUM) E ACRESCENTAR MAIS DADOS (LEMBRANDO DE USAR OS GERADORES DE CPF E CEP)
SELECT * from Aluno;

-- populando Curso
INSERT INTO Curso (Cod_curso, Nome_curso, Carg_horaria) 
VALUES (99,'Agentes do Brincar', '10 horas'),
	(98,'Jovem Mediadores do brincar', '15 horas'),
	(97,'Guardiões do brincar', '20 horas'),
	(96,'Mediadores do brincar inclusivo','30 horas');
SELECT * FROM Curso;


-- Matricula
DROP TABLE IF EXISTS Matricula CASCADE;
CREATE TABLE Matricula (
	Id_alu serial not null,
	Cod_curso smallint not null,
	Num_matri serial primary key unique,
	Id_moni smallint not null,
	Situ_matri char(7) not null check(Situ_matri IN ('ATIVA', 'INATIVA')),
	Data_matri DATE not null,
	
	FOREIGN KEY (Id_alu) REFERENCES Aluno (Id_aluno) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Cod_curso) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Id_moni) REFERENCES Monitor (Id_moni) ON UPDATE CASCADE ON DELETE CASCADE);

--Populando matricula

INSERT INTO matricula (Cod_curso, Id_moni, Situ_matri, Data_matri) VALUES 
(1, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(3, 1, 'ATIVA', '22-11-2022'),
(2, 1, 'ATIVA', '22-11-2022'),
(3, 1, 'ATIVA', '22-11-2022'),
(1, 2, 'ATIVA', '22-11-2022'),
(2, 2, 'INATIVA', '22-11-2022'),
(2, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(3, 2, 'ATIVA', '22-11-2022'),
(4, 1, 'ATIVA', '22-11-2022'),
(2, 1, 'ATIVA', '22-11-2022'),
(3, 1, 'ATIVA', '22-11-2022'),
(4, 1, 'ATIVA', '22-11-2022'),
(3, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(3, 1, 'INATIVA', '22-11-2022'),
(1, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(3, 1, 'ATIVA', '22-11-2022'),
(2, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(4, 2, 'ATIVA', '22-11-2022'),
(1, 1, 'ATIVA', '22-11-2022'),
(1, 2, 'INATIVA', '22-11-2022'),
(4, 2, 'INATIVA', '22-11-2022');

SELECT * FROM Matricula;

-- Oficina
drop table if exists oficina cascade ;
create table oficina (
	id_ofic int primary key not null ,
	nome_ofic char(20) not null ,
	data_ofic date not null,
	carga_hor int not null ,
	descricao varchar(80) not null,
	hora_inicio time not null,
	hora_termino time not null,
	Cod_curso int,
	FOREIGN KEY (Cod_curso) REFERENCES Curso (Cod_curso) ON UPDATE CASCADE ON DELETE CASCADE	
) ;

-- Populando Oficina
INSERT INTO oficina (id_ofic, nome_ofic, data_ofic, carga_hor, descricao, hora_inicio, hora_termino, Cod_curso)
VALUES (101,'Aula 1', '2023-06-01', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '09:00:00', '17:00:00',99),
	(102, 'Aula 2', '2023-06-02', 4, 'Brincar para construção de uma cultura de paz: habilidades ', '10:00:00', '16:00:00',99),
	(103, 'Aula 3', '2023-06-03', 4, 'Gerenciando riscos no brincar', '13:00:00', '17:00:00',98),
	(104, 'Aula 4', '2023-06-04', 4, 'Brincadeiras para todas as faixas', '14:00:00', '19:00:00',97),
	(105, 'Aula 5', '2023-06-05', 4, 'Inclusão de crianças com deficiência pelo brincar', '11:00:00', '18:00:00',98),
	(106, 'Aula 6', '2023-06-06', 4, 'Brincar e o imaginário infantil: contação de histórias', '13:00:00', '17:00:00',97),
	(107, 'Aula 7', '2023-06-07', 4, 'Brincar e dançar: a arte em movimento', '10:00:00', '13:00:00',96),
	(108, 'Aula 8', '2023-06-08', 4, 'Brincar para construção de uma cultura de paz: habilidades ', '13:00:00', '19:00:00',99),
	(109, 'Aula 9', '2023-06-09', 4, 'Gerenciando riscos no brincar', '10:00:00', '14:00:00',98),
	(110, 'Aula 10', '2023-06-10', 4, 'Inclusão de crianças com deficiência pelo brincar', '09:00:00', '17:00:00',98),
	(111, 'Aula 11', '2023-06-11', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '11:00:00', '16:00:00',96),
	(112, 'Aula 12', '2023-06-12', 4,'Gerenciando riscos no brincar', '09:00:00', '17:00:00',97),
	(113, 'Aula 13', '2023-06-13', 4,'Inclusão de crianças com deficiência pelo brincar', '10:00:00', '16:00:00',98),
	(114, 'Aula 14', '2023-06-14', 4, 'Principios dos Agentes do Brincar: como proporcionar o brincar', '13:00:00', '17:00:00',96);
	
select * from oficina


--atividades
drop table if exists atividades cascade ;
create table atividades (
	Cod_curso int not null,
	num_atv integer not null primary key,
	Id_aluno int not null,
	nome_atv varchar(20) not null,
	entrega boolean not null,
	nota_atv smallint not null,
	Id_monitor int not null ,
	
	
foreign key (Id_monitor) references monitor(Id_monitor)
on delete cascade on update cascade ,
foreign key (Id_aluno) references aluno(Id_aluno)
on delete cascade on update cascade	,
foreign key (Cod_curso) references curso(Cod_curso)
on delete cascade on update cascade ) ;

select * from atividades

-- populando atividades

INSERT INTO atividades (Cod_curso, num_atv, Id_aluno, nome_atv, entrega, nota_atv, id_monitor)
VALUES 
    (99, 651, 1, 'Atividade 1', true, 80, 1),
    (99, 652, 2, 'Atividade 2', true, 75, 2),
    (99, 653, 3, 'Atividade 3', false, 0, 1),
    (98, 654, 4, 'Atividade 1', true, 90, 2),
    (98, 655, 5, 'Atividade 2', true, 85, 1),
    (98, 656, 6, 'Atividade 3', true, 95, 2),
    (97, 657, 7, 'Atividade 1', true, 70, 1),
    (97, 658, 8, 'Atividade 2', false, 0, 2),
    (97, 659, 9, 'Atividade 3', true, 88, 1),
    (96, 660, 10, 'Atividade 1', true, 92, 2),
    (96, 611, 11, 'Atividade 2', true, 87, 1),
    (96, 612, 12, 'Atividade 3', true, 82, 2);

select * from atividades





























