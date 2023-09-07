create database Disciplina_aluno;
use  Disciplina_aluno;
create table Aluno(
id_Aluno int primary key auto_increment,
nome_alu varchar(50) not null,
email_alu varchar(80) not null,
data_nasc date not null,
cpf varchar(11) not null
);


insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Maju","Maju@ifro.edu.br","2003-09-11","78480094087");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Luan","Luan@ifro.edu.br","2001-08-28","6332073059");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Leyukezer","russo@ifro.edu.br","2002-06-21","04760722041");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Amanda","amanda@ifro.edu.br","2004-09-14","71846853001");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Bruno","Bruno@ifro.edu.br","2003-06-29","07978429008");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Edson","Edson@ifro.edu.br","2001-08-06","19980017090");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Rubens","Rubens@ifro.edu.br","1977-07-05","33134617005");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Thiago","Thiago@ifro.edu.br","1982-07-06","62062646020");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Elias","Elias@ifro.edu.br","1981-07-22","63225301000");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Elias","Elias@ifro.edu.br","1981-07-22","91286073090");
insert into Aluno (nome_alu,email_alu,data_nasc,cpf) values ("Katielly","Katielly@ifro.edu.br","2001-06-26","77817899037");




select * from Aluno;
alter table  Aluno add sexo varchar(20);

update Aluno set sexo = "masc" where id_Aluno = 7 or id_Aluno= 8 or id_Aluno= 9 or id_Aluno= 10;
desc  Aluno;
alter table  Aluno change sexo sexo varchar(20) not null;
delete from aluno where data_nasc < "1990-01-01";