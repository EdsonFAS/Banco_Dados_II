
create database Consultorio;

use Consultorio;

create table medico(
id_medico int primary key auto_increment not null,
CRM varchar(20) not null,
Nome_med varchar(80) not null,
especializacao varchar(80) not null,
email varchar(90) not null,
telefone varchar(12) not null
);
create table funcionario (
id_funcionario int primary key not null auto_increment,
nome_func varchar(80) not null,
cpf varchar(11) not null,
data_admissao date not null,
email varchar(90) not null,
senha varchar(60) not null,
telefone varchar(12) not null
);

create table paciente(
id_paciente int primary key auto_increment not null,
nome_pac varchar(80) not null,
cpf varchar(11) not null,
email varchar(90) not null,
data_nasc date not null,
sexo char not null,
telefone varchar(12) not null
);

create table Consulta(
id_consulta int not null auto_increment primary key,
data_atendimento date not null,
horario time not null,
fk_paciente int not null,
fk_funcionario int not null,
foreign key (fk_funcionario) references  funcionario(id_funcionario),
foreign key (fk_paciente) references paciente (id_paciente)
);

create table Consulta_medic(
id_Consulta_medic int not null primary key auto_increment,
fk_medic int not null,
fk_consult int not null,

foreign key (fk_medic) references medico (id_medico),
foreign key(fk_consult) references Consulta (id_consulta)

);

insert into medico (CRM,Nome_med,email,telefone,especializacao) values('87946549849644', 'Eduardo Oliveira','eduardo@medic.com','69999589671', 'Clinico Geral'),
('58478946541651','José Almeida','josemd@medic.com','69999586912','Pediatra'),
('32165846513114','Raul neto','raulnt@medic.com','69999716812','Cardiologista' ),
('56489156349854','Jorge Silva','jorgesl@medic','69999226581','psicologo'),
('23146541322301','Matheus Moura','matheusmr@medic.com','69999117584','cirugião geral');
desc medico;
select * from medico;

insert into paciente (nome_pac,cpf,email,data_nasc,sexo,telefone) values('Julio alberto','84125812350','julioalb@pacient.com','2002-01-20','M','69999256581'),
('Fernadno Souza','15368412512','fernandosz@pacient.com','2000-07-10','M','69999510236'),
('Maria Ferreira','35841023620','mariafrr@pacient.com','2001-11-17','F','699991722371'),
('Felipe Amorin','03258412521','felipeam@pacient.com','1995-03-07','M','69999002517');
select * from paciente;

insert into funcionario (nome_func,cpf,data_admissao,email,senha,telefone) values('Anna oliveira','03215841201','2022-08-22','anaoli@func.com','102345','69999158712'),
('Debora Preto','84598712502','2021-02-13','deborapr@func.com','18991','69999114577'),
('Max Rocha','39812200123','2019-11-30','Maxrc@func.com','10870','69999556800');
select * from funcionario;
insert into Consulta (data_atendimento,horario,fk_paciente,fk_funcionario) values('2023-02-25','15:30',1,2),('2023-08-06','08:15',3,3),('2023-11-10','11:00',2,1);
select * from consulta;

insert into Consulta_medic(fk_medic,fk_consult) values (1,3),(3,2),(2,1);
desc Consulta_medic;
select * from Consulta_medic;
alter table medico  auto_increment = 1;
delete from medico;
-- drop database Consultorio;
