CREATE DATABASE sitesimulado;
USE sitesimulado;

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY NOT NULL,
email_usu VARCHAR(80) NOT NULL UNIQUE,
nome_usu VARCHAR(80) NOT NULL,
data_cadastro DATE NOT NULL

 );
 create table diSciplina (
 id_disciplina INT PRIMARY KEY NOT NULL,
 nome_disc VARCHAR(30) NOT NULL);
 
 create table assunto(
 id_assunto INT PRIMARY KEY NOT NULL,
 text_assunto TEXT,
 fk_disc INT NOT NULL,
 FOREIGN KEY (fk_disc) references  disciplina(id_disciplina) );
 CREATE TABLE professor(
 id_professor INT NOT NULL PRIMARY KEY,
 nome_prof VARCHAR(80) NOT NULL,
 telefone_prof VARCHAR(20) NOT NULL,
 email_prof VARCHAR(30) NOT NULL UNIQUE
 );
 CREATE TABLE banca(
 id_banca INT NOT NULL PRIMARY KEY,
 nome_banca VARCHAR(30) NOT NULL,
 sigla_ban VARCHAR(5) NOT NULL);
 
 CREATE TABLE questao (
 id_questao INT NOT NULL PRIMARY KEY,
 enuciado VARCHAR(30) NOT NULL,
 modalidade VARCHAR(20) NOT NULL,
 nivel VARCHAR(15),
 fk_banca INT NOT NULL,
 fk_assunto INT NOT NULL,
 FOREIGN KEY (fk_banca) REFERENCES banca(id_banca),
 FOREIGN KEY (fk_assunto) REFERENCES assunto(id_assunto)
 );
 CREATE TABLE alternativa(
 id_alternativa INT NOT NULL PRIMARY KEY,
 texto_alter TEXT NOT NULL,
 gabatiro_alter BOOL NOT NULL,
 fk_quest INT NOT NULL,
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao));
 
 CREATE TABLE usuario_quest(
 id_resposta INT NOT NULL PRIMARY KEY,
 responta_use TEXT,
 resultado BOOL NOT NULL,
 data_res DATE NOT NULL,
 fk_usu INT,
 fk_quest INT,
 FOREIGN KEY (fk_usu) REFERENCES usuario(id_usuario),
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao));
 
 CREATE TABLE quest_prof(
 id_quest_prof INT NOT NULL PRIMARY KEY,
 texto_com TEXT ,
 data_COM DATE,
 fk_prof INT,
 fk_quest INT,
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao),
 FOREIGN KEY (fk_prof) REFERENCES professor(id_professor));

 
